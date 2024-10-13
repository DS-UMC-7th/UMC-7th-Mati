//
//  LoginView.swift
//  week1kream
//
//  Created by 김미주 on 28/09/2024.
//

import UIKit

class LoginView: UIView {
    var delegate: UIViewController? // 프레젠트 처리 위한 델리게이트
    private let loginModel = LoginModel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(logoImageView)
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(kakaoLoginButton)
        self.addSubview(appleLoginButton)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            logoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),
            
            emailLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 87),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 8),
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            emailTextField.heightAnchor.constraint(equalToConstant: 34),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 17),
            passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            passwordTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            passwordTextField.heightAnchor.constraint(equalToConstant: 34),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 17),
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            loginButton.heightAnchor.constraint(equalToConstant: 38),
            
            kakaoLoginButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 87),
            kakaoLoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 47.5),
            kakaoLoginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -47.5),
            kakaoLoginButton.heightAnchor.constraint(equalToConstant: 40),
            
            appleLoginButton.topAnchor.constraint(equalTo: kakaoLoginButton.bottomAnchor, constant: 22),
            appleLoginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 47.5),
            appleLoginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -47.5),
            appleLoginButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // 상단 로고
    public lazy var logoImageView: UIImageView =  {
        let logoView = UIImageView()
        
        logoView.image = UIImage(named: "kream_logo")
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        return logoView
    }()
    
    // 이메일 주소 입력
    public lazy var emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "이메일 주소"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    public lazy var emailTextField: UITextField = {
        let textfield = UITextField()
        
        textfield.addLeftPadding()
        textfield.placeholder = "예) kream@kream.co.kr"
        textfield.font = UIFont.systemFont(ofSize: 12)
        
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).cgColor
        textfield.layer.cornerRadius = CGFloat(15)
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    // 비밀번호 입력
    public lazy var passwordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    public lazy var passwordTextField: UITextField = {
        let textfield = UITextField()
        
        textfield.addLeftPadding()
        textfield.placeholder = "비밀번호를 입력해주세요"
        textfield.font = UIFont.systemFont(ofSize: 12)
        
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).cgColor
        textfield.layer.cornerRadius = CGFloat(15)
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    // 로그인 버튼
    public lazy var loginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        button.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        button.layer.cornerRadius = CGFloat(8)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        
        return button
    }()
    
    @objc
    private func loginButtonDidTap() {
        guard let email = emailTextField.text, !email.isEmpty else {
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            return
        }
        
        loginModel.saveEmail(email)
        loginModel.savePassword(password)
        
        let mainVC = MainViewController()
        mainVC.modalPresentationStyle = .fullScreen
        delegate?.present(mainVC, animated: true)
    }
    
    
    // 카카오 로그인 버튼
    public lazy var kakaoLoginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("카카오로 로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        // 이미지 위치를 고정하면서 옆으로 밀린 타이틀을 다시 돌려놓음
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 0)
        
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10
        
        button.setImage(UIImage(named: "kakao_logo"), for: .normal)
        button.imageView?.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 16).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // 애플 로그인 버튼
    public lazy var appleLoginButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Apple로 로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: -15.17, bottom: 0, right: 0)
        
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10
        
        button.setImage(UIImage(named: "apple_logo"), for: .normal)
        button.imageView?.leadingAnchor.constraint(equalTo: button.leadingAnchor, constant: 16).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

}

// textfield 왼쪽 여백
extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
