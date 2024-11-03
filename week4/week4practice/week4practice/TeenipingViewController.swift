//
//  TeenipingViewController.swift
//  week4practice
//
//  Created by 김미주 on 15/10/2024.
//

import UIKit

class TeenipingViewController: UIViewController {
    private let rootView = TeenipingView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = rootView
    }
    
    private func setupAction() {
        rootView.segmentedControl.addTarget(
            self,
            action: #selector(segmentedControlValueChanged(segment:)),
            for: .valueChanged)
    }
    
    @objc
    private func segmentedControlValueChanged(segment: UISegmentedControl) {
        // TODO: segment 인덱스 따라 collectionView 표시 여부 결정
    }

}
