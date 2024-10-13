//
//  ProfileSettingViewController.swift
//  week2kream
//
//  Created by 김미주 on 06/10/2024.
//

import UIKit

class ProfileSettingViewController: UIViewController {
    
    private let loginModel = LoginModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = profileSettingView
        profileSettingView.delegate = self
        loadUserInfo()
    }
    
    public lazy var profileSettingView: ProfileSettingView = {
        let view = ProfileSettingView()
        return view
    }()
    
    private func loadUserInfo() {
        if let savedEmail = loginModel.loadEmail() {
            profileSettingView.userEmailTextField.text = savedEmail
        }
        
        if let savedPassword = loginModel.loadPassword() {
            profileSettingView.userPasswordTextField.text = savedPassword
        }
    }

}
