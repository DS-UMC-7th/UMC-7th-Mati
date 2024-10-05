//
//  ProfileSettingViewController.swift
//  week2kream
//
//  Created by 김미주 on 06/10/2024.
//

import UIKit

class ProfileSettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = profileSettingView
        profileSettingView.delegate = self
    }
    
    private lazy var profileSettingView: ProfileSettingView = {
        let view = ProfileSettingView()
        return view
    }()

}
