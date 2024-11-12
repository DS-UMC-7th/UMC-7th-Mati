//
//  PurchaseViewController.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class PurchaseViewController: UIViewController {
    private let purchaseView = PurchaseView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = purchaseView
        
        setupAction()
        setDataSource()
    }
    
    // MARK: - action
    private func setupAction() {
        purchaseView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func cancelButtonTapped() {
        self.dismiss(animated: true)
    }
    
    // MARK: - dataSource
    private func setDataSource() {
        purchaseView.sizeCollectionView.dataSource = self
    }

}

extension PurchaseViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SizeModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SizeCollectionViewCell.identifier, for: indexPath) as? SizeCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let list = SizeModel.dummy()
        cell.sizeLabel.text = list[indexPath.row].size
        cell.priceLabel.text = list[indexPath.row].price
        
        return cell
    } 
    
    
}
