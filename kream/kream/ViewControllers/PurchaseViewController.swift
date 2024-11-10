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
    }
    
    // MARK: - action
    private func setupAction() {
        purchaseView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func cancelButtonTapped() {
        self.dismiss(animated: true)
    }

}
