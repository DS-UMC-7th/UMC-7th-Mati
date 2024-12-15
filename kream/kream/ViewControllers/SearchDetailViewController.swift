//
//  SearchDetailViewController.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//

import UIKit
import Moya

class SearchDetailViewController: UIViewController {
    private let searchDetailView = SearchDetailView()
    private let provider = MoyaProvider<SearchTargetType>()
    var searchModels: [SearchModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = searchDetailView
        
        setupAction()
        setupDelegae()
    }
    
    // MARK: - func
    private func setupDelegae() {
        searchDetailView.resultTableView.dataSource = self
        searchDetailView.resultTableView.delegate = self
    }
    
    private func setupAction() {
        searchDetailView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        searchDetailView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        searchDetailView.searchBar.addTarget(self, action: #selector(searchComplete), for: .editingDidEndOnExit)
    }
    
    private func getSearchResult() {
        guard let keyword = searchDetailView.searchBar.text, !keyword.isEmpty else {
            print("검색어가 비어있습니다.")
            return
        }
        
        provider.request(.getSearchResult(keyword: keyword)) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let response):
                do {
                    let searchResponse = try JSONDecoder().decode(SearchResponseModel.self, from: response.data)
                    
                    // API 응답 데이터를 모델에 저장
                    self.searchModels = searchResponse.products.map { SearchModel(productName: $0.title) }
                    
                    print("Search Models: \(self.searchModels)")
                    print("Success mapped response")
                    
                    // 테이블 뷰 업데이트
                    DispatchQueue.main.async {
                        self.searchDetailView.resultTableView.reloadData()
                    }
                } catch {
                    print("Mapping Error: \(error)")
                }
            case .failure(let error):
                print("Network request Error: \(error.localizedDescription)")
            }
        }
    }
    
    
    // MARK: - action
    @objc
    private func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc
    private func cancelButtonTapped() {
        presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @objc
    private func searchComplete() {
        getSearchResult()
    }
    
}

// MARK: - dataSource, delegate
extension SearchDetailViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier, for: indexPath) as? SearchTableViewCell else {
            return UITableViewCell()
        }
        
        let list = searchModels[indexPath.row]
        cell.nameLabel.text = list.productName
        return cell
    }
}
