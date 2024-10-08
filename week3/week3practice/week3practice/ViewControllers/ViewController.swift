//
//  ViewController.swift
//  week3practice
//
//  Created by 김미주 on 08/10/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = userDefaultsView
    }

    private lazy var userDefaultsView: UserDefaultsView = {
        let view = UserDefaultsView()
        return view
    }()

}

