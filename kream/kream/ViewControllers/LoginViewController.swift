//
//  ViewController.swift
//  week1kream
//
//  Created by 김미주 on 28/09/2024.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        loginView.delegate = self // 델리게이트 설정
    }

    private lazy var loginView: LoginView = {
        let view = LoginView()
        return view
    }()
}

