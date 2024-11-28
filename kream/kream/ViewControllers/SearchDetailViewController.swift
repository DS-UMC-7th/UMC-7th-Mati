//
//  SearchDetailViewController.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//

import UIKit

class SearchDetailViewController: UIViewController {
    private let searchDetailView = SearchDetailView()
    
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
    
}

// MARK: - dataSource, delegate
extension SearchDetailViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        SearchModel.dummy().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier, for: indexPath) as? SearchTableViewCell else {
            return UITableViewCell()
        }
        
        let list = SearchModel.dummy()
        cell.nameLabel.text = list[indexPath.row].productName
        return cell
    }
}
