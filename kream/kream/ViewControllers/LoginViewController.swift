//
//  ViewController.swift
//  week1kream
//
//  Created by 김미주 on 28/09/2024.
//

import UIKit
import KakaoSDKUser

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        loginView.delegate = self // 델리게이트 설정
        
        setupAction()
    }
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        return view
    }()
    
    // MARK: - KakaoLogin
    
    private func setupAction() {
        loginView.kakaoLoginButton.addTarget(self, action: #selector(kakaoLoginButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func kakaoLoginButtonTapped() {
        print("touch")
        
        if (UserApi.isKakaoTalkLoginAvailable()) {
            kakaoLoginWithApp()
        }
        else {
            kakaoLoginWithAccount()
        }
    }
    
    func kakaoLoginWithApp() {
        UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
            if let error = error {
                print(error)
            } else {
                print("loginWithKakaoTalk() success.")
                
                if let token = oauthToken?.accessToken {
                    KeychainService.shared.save(token.data(using: .utf8)!, for: "accessToken")
                }
                
                self.getUserInfo { nickName in
                    if let nickName = nickName {
                        KeychainService.shared.save(nickName.data(using: .utf8)!, for: "userName")
                    }
                }
                
                let mainVC = MainViewController()
                mainVC.modalPresentationStyle = .fullScreen
                self.present(mainVC, animated: true)
            }
        }
    }
    
    func kakaoLoginWithAccount() {
        UserApi.shared.loginWithKakaoAccount { (oauthToken, error) in
            if let error = error {
                print(error)
            } else {
                print("loginWithKakaoAccount() success.")
                
                if let token = oauthToken?.accessToken {
                    KeychainService.shared.save(token.data(using: .utf8)!, for: "accessToken")
                }
                
                self.getUserInfo { nickName in
                    if let nickName = nickName {
                        KeychainService.shared.save(nickName.data(using: .utf8)!, for: "nickName")
                    }
                }
                
                let mainVC = MainViewController()
                mainVC.modalPresentationStyle = .fullScreen
                self.present(mainVC, animated: true)
            }
        }
    }
    
    func kakaoLogout() {
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
            }
            else {
                print("logout() success.")
            }
        }
    }
    
    func kakaoUnlink() {
        UserApi.shared.unlink {(error) in
            if let error = error {
                print(error)
            }
            else {
                print("unlink() success.")
            }
        }
    }
    
    func getUserInfo(completion: @escaping (String?) -> Void) {
        UserApi.shared.me() { (user, error) in
            if let error = error {
                print(error)
                completion(nil)
            } else {
                let nickName = user?.kakaoAccount?.profile?.nickname
                print("이름: \(nickName ?? "UserName")")
                completion(nickName)
            }
        }
    }
}

