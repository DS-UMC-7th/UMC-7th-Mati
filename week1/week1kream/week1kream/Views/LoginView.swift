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
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 126),
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 53),
            logoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -53),
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

}
