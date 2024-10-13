//
//  ProfileSettingView.swift
//  week2kream
//
//  Created by 김미주 on 06/10/2024.
//

import UIKit

class ProfileSettingView: UIView {
    var delegate: UIViewController?
    private let loginModel = LoginModel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(backButton)
        self.addSubview(titleLabel)
        self.addSubview(profileImageView)
        self.addSubview(profileInfoLabel)
        self.addSubview(userEmailLabel)
        self.addSubview(userEmailTextField)
        self.addSubview(userEmailButton)
        self.addSubview(userPasswordLabel)
        self.addSubview(userPasswordTextField)
        self.addSubview(userPasswordButton)
        
        backButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(67)
            $0.left.equalToSuperview().offset(27)
        }
        
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalTo(backButton)
        }
        
        profileImageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(144)
        }
        
        profileInfoLabel.snp.makeConstraints {
            $0.top.equalTo(profileImageView.snp.bottom).offset(20)
            $0.left.equalToSuperview().offset(27)
            $0.height.equalTo(29)
        }
        
        userEmailLabel.snp.makeConstraints {
            $0.top.equalTo(profileInfoLabel.snp.bottom).offset(23)
            $0.leading.equalTo(profileInfoLabel.snp.leading)
            $0.height.equalTo(22)
        }
        
        userEmailTextField.snp.makeConstraints {
            $0.top.equalTo(userEmailLabel.snp.bottom).offset(4)
            $0.leading.equalTo(userEmailLabel.snp.leading)
            $0.width.equalTo(282)
            $0.height.equalTo(32)
        }
        
        userEmailButton.snp.makeConstraints {
            $0.centerY.equalTo(userEmailTextField)
            $0.leading.equalTo(userEmailTextField.snp.trailing).offset(9)
            $0.right.equalToSuperview().offset(-17)
            $0.width.equalTo(58)
            $0.height.equalTo(32)
        }
        
        userPasswordLabel.snp.makeConstraints {
            $0.top.equalTo(userEmailTextField.snp.bottom).offset(23)
            $0.leading.equalTo(profileInfoLabel.snp.leading)
            $0.height.equalTo(22)
        }
        
        userPasswordTextField.snp.makeConstraints {
            $0.top.equalTo(userPasswordLabel.snp.bottom).offset(4)
            $0.leading.equalTo(userPasswordLabel.snp.leading)
            $0.width.equalTo(282)
            $0.height.equalTo(32)
        }
        
        userPasswordButton.snp.makeConstraints {
            $0.centerY.equalTo(userPasswordTextField)
            $0.leading.equalTo(userPasswordTextField.snp.trailing).offset(9)
            $0.right.equalToSuperview().offset(-17)
            $0.width.equalTo(58)
            $0.height.equalTo(32)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // 뒤로가기 버튼
    private lazy var backButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "left_arrow_icon"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(backButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func backButtonDidTap() {
        delegate?.navigationController?.popViewController(animated: true)
    }
    
    // 타이틀
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "프로필 관리"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // 프로필 사진
    public lazy var profileImageView: UIImageView = {
        let image = UIImageView()
        
        image.layer.cornerRadius = 45
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    // 프로필 정보
    private lazy var profileInfoLabel: UILabel = {
        let label = UILabel()
        
        label.text = "프로필 정보"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // 유저 이메일
    private lazy var userEmailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 이메일"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    public lazy var userEmailTextField: UITextField = {
        let textfield = UITextField()
        
        textfield.addLeftPadding()
        textfield.placeholder = "새로운 이메일을 입력해주세요!"
        textfield.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        textfield.textColor = .black
        
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1).cgColor
        textfield.layer.cornerRadius = 10
        
        textfield.isUserInteractionEnabled = false
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    private lazy var userEmailButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(userEmailButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    @objc func userEmailButtonClicked() {
        if userEmailButton.titleLabel?.text == "변경" {
            userEmailButton.setTitle("확인", for: .normal)
            userEmailTextField.isUserInteractionEnabled = true
        } else {
            guard let email = userEmailTextField.text, !email.isEmpty else {
                return
            }
            loginModel.saveEmail(email)
            userEmailTextField.isUserInteractionEnabled = false
        }
        
    }
    
    // 유저 비밀번호
    private lazy var userPasswordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "유저 비밀번호"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    public lazy var userPasswordTextField: UITextField = {
        let textfield = UITextField()
        
        textfield.addLeftPadding()
        textfield.placeholder = "새로운 비밀번호를 입력해주세요!"
        textfield.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        textfield.textColor = .black
        
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1).cgColor
        textfield.layer.cornerRadius = 10
        
        textfield.isSecureTextEntry = true
        textfield.isUserInteractionEnabled = false
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    
    private lazy var userPasswordButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 6
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(userPasswordButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    @objc func userPasswordButtonClicked() {
        if userPasswordButton.titleLabel?.text == "변경" {
            userPasswordButton.setTitle("확인", for: .normal)
            userPasswordTextField.isUserInteractionEnabled = true
        } else {
            guard let password = userPasswordTextField.text, !password.isEmpty else {
                return
            }
            loginModel.savePassword(password)
            userPasswordTextField.isUserInteractionEnabled = false
        }
        
    }
}
