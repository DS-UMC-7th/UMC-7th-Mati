//
//  PurchaseViewController.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class PurchaseViewController: UIViewController {
    private let purchaseView = PurchaseView()
    private var selectedIndex: IndexPath?

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
        purchaseView.sizeCollectionView.delegate = self

    }

}

extension PurchaseViewController: UICollectionViewDataSource, UICollectionViewDelegate {
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
        
        let isSelected = indexPath == selectedIndex
        cell.updateSelectionState(isSelected)
        
        return cell
    } 
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // 기존 선택 해제
        if let previousIndex = selectedIndex {
            let previousCell = collectionView.cellForItem(at: previousIndex) as? SizeCollectionViewCell
            previousCell?.updateSelectionState(false)
        }
        
        // 새로운 선택 적용
        selectedIndex = indexPath
        let currentCell = collectionView.cellForItem(at: indexPath) as? SizeCollectionViewCell
        currentCell?.updateSelectionState(true)
    }
    
}
