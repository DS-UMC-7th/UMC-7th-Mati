//
//  SearchViewController.swift
//  kream
//
//  Created by 김미주 on 06/11/2024.
//

import UIKit

class SearchViewController: UIViewController {
    private let searchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view = searchView
        setupDataSource()
        setupAction()
    }
    
    private func setupDataSource() {
        searchView.searchCollectionView.dataSource = self
    }
    
    // MARK: - action
    
    private func setupAction() {
        searchView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        searchView.searchBar.addTarget(self, action: #selector(searchBarTapped), for: .editingDidBegin)
    }
    
    @objc
    private func cancelButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc
    private func searchBarTapped() {
        print("seachBarTapped")
        let searchVC = SearchDetailViewController()
        searchVC.modalPresentationStyle = .fullScreen
        present(searchVC, animated: true)
    }

}

extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SearchWordModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchWordCollectionViewCell.identifier, for: indexPath) as? SearchWordCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let list = SearchWordModel.dummy()
        cell.wordLabel.text = list[indexPath.row].word
        return cell
    }
    
    
}
