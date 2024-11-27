//
//  MatinKimViewController.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class MatinKimViewController: UIViewController {
    private let matinView = MatinKimView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = matinView

        setupDataSource()
        setupAction()
    }
    
    private func setupDataSource() {
        matinView.optionCollectionView.dataSource = self
    }
    
    // MARK: - action
    private func setupAction() {
        matinView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        matinView.purchaseButton.addTarget(self, action: #selector(purchaseButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc
    private func purchaseButtonTapped() {
        let purchaseVC = PurchaseViewController()
        present(purchaseVC, animated: true)
    }

}

extension MatinKimViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MatinKimModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MatinKimCollectionViewCell.identifier, for: indexPath) as? MatinKimCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let list = MatinKimModel.dummy()
        cell.imageView.image = list[indexPath.row].image
        return cell
    }
    
    
}
