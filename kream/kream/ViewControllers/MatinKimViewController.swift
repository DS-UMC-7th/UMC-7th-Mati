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

        setupAction()
    }
    
    // MARK: - action
    private func setupAction() {
        matinView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }

}
