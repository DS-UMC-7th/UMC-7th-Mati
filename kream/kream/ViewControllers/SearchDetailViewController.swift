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
    }
    
    // MARK: - action
    private func setupAction() {
        searchDetailView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        searchDetailView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func backButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc
    private func cancelButtonTapped() {
        presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }

}
