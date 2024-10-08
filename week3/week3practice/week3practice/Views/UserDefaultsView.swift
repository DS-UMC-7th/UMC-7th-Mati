//
//  UserDefaultsView.swift
//  week3practice
//
//  Created by 김미주 on 08/10/2024.
//

import UIKit
import SnapKit

class UserDefaultsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setStackView()
        self.addComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    private func setStackView() {
        topStackView.addArrangedSubview(titleLabel)
        topStackView.addArrangedSubview(inputTextField)
        topStackView.addArrangedSubview(saveButton)
        
        bottomStackView.addArrangedSubview(printLabel)
        bottomStackView.addArrangedSubview(resultLabel)
    }
    
    private func addComponents() {
        self.addSubview(topStackView)
        self.addSubview(bottomStackView)
        
        topStackView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(197)
            $0.left.equalToSuperview().offset(42)
            $0.right.equalToSuperview().offset(-42)
        }
        
        inputTextField.snp.makeConstraints {
            $0.width.equalTo(309)
            $0.height.equalTo(52)
        }
        
        saveButton.snp.makeConstraints {
            $0.width.equalTo(222)
            $0.height.equalTo(42)
        }
        
        bottomStackView.snp.makeConstraints {
            $0.top.equalTo(topStackView.snp.bottom).offset(114)
            $0.left.equalToSuperview().offset(56.5)
            $0.right.equalToSuperview().offset(-56.5)
        }
        
        printLabel.snp.makeConstraints {
            $0.width.equalTo(280)
            $0.height.equalTo(24)
        }
        
        resultLabel.snp.makeConstraints {
            $0.width.equalTo(280)
            $0.height.equalTo(172)
        }
    }
    
    // MARK: - 상단 스택뷰
    
    // 제목
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "UserDefaults 실습 뷰"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        
        return label
    }()
    
    // 텍스트필드
    private lazy var inputTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "아무 텍스트나 입력해주세요"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textColor = .black
        
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        
        return textField
    }()
    
    // 저장 버튼
    private lazy var saveButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("UserDefaults에 저장하기", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.backgroundColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    // 상단 스택뷰
    private lazy var topStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 26
        
        return stackView
    }()
    
    // MARK: - 하단 스택뷰
    
    // 출력 제목
    private lazy var printLabel: UILabel = {
        let label = UILabel()
        
        label.text = "UserDefaults 값 출력 라벨"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .center
        
        return label
    }()
    
    // 출력 결과
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        
        label.text = "UserDefaults 값이 출력됩니다."
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.textAlignment = .center

        
        label.layer.borderWidth = 3
        label.layer.borderColor = UIColor(red: 0/255, green: 10/255, blue: 249/255, alpha: 0.68).cgColor
        label.layer.cornerRadius = 10
        
        return label
    }()
    
    // 하단 스택뷰
    private lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 21
        
        return stackView
    }()
    
}
