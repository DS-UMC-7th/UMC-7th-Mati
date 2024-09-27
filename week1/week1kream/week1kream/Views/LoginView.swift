//
//  LoginView.swift
//  week1kream
//
//  Created by 김미주 on 28/09/2024.
//

import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(logoImageView)
        self.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            logoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),
            
            emailLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 87),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45)
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

}
