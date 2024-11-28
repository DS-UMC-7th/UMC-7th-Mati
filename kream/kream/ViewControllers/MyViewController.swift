//
//  MyViewController.swift
//  week2kream
//
//  Created by 김미주 on 05/10/2024.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView
        myView.delegate = self
        
        loadUserData()
    }
    
    private lazy var myView: MyView = {
        let view = MyView()
        return view
    }()
    
    func loadUserData() {
        if let tokenData = KeychainService.shared.read(for: "accessToken"),
           let token = String(data: tokenData, encoding: .utf8) {
            print("저장된 토큰: \(token)")
        }

        if let nickNameData = KeychainService.shared.read(for: "nickName"),
           let nickName = String(data: nickNameData, encoding: .utf8) {
            print("저장된 닉네임: \(nickName)")
            myView.idLabel.text = nickName
        }
    }

}
