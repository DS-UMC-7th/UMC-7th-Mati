//
//  MyView.swift
//  week2kream
//
//  Created by 김미주 on 05/10/2024.
//

import UIKit
import SnapKit

class MyView: UIView {
    var delegate: UIViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addComponents()
    }
    
    private func addComponents() {
        self.addSubview(settingButton)
        self.addSubview(cameraButton)
        self.addSubview(profileImageView)
        self.addSubview(idLabel)
        self.addSubview(followerLabel)
        self.addSubview(followingLabel)
        self.addSubview(profileSettingButton)
        self.addSubview(profileShareButton)
        
        settingButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(75)
            $0.left.equalToSuperview().offset(32.5)
        }
        
        cameraButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-33.5)
        }
        
        profileImageView.snp.makeConstraints {
            $0.top.equalTo(cameraButton.snp.bottom).offset(26)
            $0.left.equalToSuperview().offset(32.5)
            $0.width.equalTo(90)
            $0.height.equalTo(90)
        }
        
        idLabel.snp.makeConstraints {
            $0.top.equalTo(cameraButton.snp.bottom).offset(47)
            $0.leading.equalTo(profileImageView.snp.trailing).offset(16)
            $0.height.equalTo(23)
        }
        
        followerLabel.snp.makeConstraints {
            $0.top.equalTo(idLabel.snp.bottom).offset(6)
            $0.leading.equalTo(idLabel.snp.leading)
            $0.height.equalTo(19)
        }
        
        followingLabel.snp.makeConstraints {
            $0.leading.equalTo(followerLabel.snp.trailing).offset(8)
            $0.centerY.equalTo(followerLabel)
            $0.height.equalTo(19)
        }
        
        profileSettingButton.snp.makeConstraints {
            $0.leading.equalTo(profileImageView)
            $0.top.equalTo(profileImageView.snp.bottom).offset(26)
            $0.width.equalTo(157)
            $0.height.equalTo(26)
        }
        
        profileShareButton.snp.makeConstraints {
            $0.leading.equalTo(profileSettingButton.snp.trailing).offset(14)
            $0.centerY.equalTo(profileSettingButton)
            $0.width.equalTo(157)
            $0.height.equalTo(26)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // 설정 버튼
    private lazy var settingButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "setting_icon"), for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // 카메라 버튼
    private lazy var cameraButton: UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "camera_icon"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // 프로필 사진
    private lazy var profileImageView: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "profile_image")
        image.layer.cornerRadius = 45
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    // 사용자 아이디
    private lazy var idLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Jeong_iOS"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // 팔로워
    private lazy var followerLabel: UILabel = {
        let label = UILabel()
        
        label.text = "팔로워 326"
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let attributedLabel = NSMutableAttributedString(string: label.text!)
        let regularFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        attributedLabel.addAttribute(.font, value: regularFont, range: NSRange(location: 0, length: 3))
        label.attributedText = attributedLabel
        
        return label
    }()
    
    // 팔로잉
    private lazy var followingLabel: UILabel = {
        let label = UILabel()
        
        label.text = "팔로잉 20"
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let attributedLabel = NSMutableAttributedString(string: label.text!)
        let regularFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        attributedLabel.addAttribute(.font, value: regularFont, range: NSRange(location: 0, length: 3))
        label.attributedText = attributedLabel
        
        return label
    }()
    
    // 프로필 관리 버튼
    private lazy var profileSettingButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("프로필 관리", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        button.setTitleColor(.black, for: .normal)
        
        button.backgroundColor = .white
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1).cgColor
        button.layer.cornerRadius = 8
        
        button.addTarget(self, action: #selector(profileSettingButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func profileSettingButtonDidTap() {
        let profileSettingVC = ProfileSettingViewController()
        delegate?.navigationController?.isNavigationBarHidden = true // 커스텀하기 위해 기본 바 숨김 처리
        delegate?.navigationController?.pushViewController(profileSettingVC, animated: true)
    }
    
    // 프로필 공유 버튼
    private lazy var profileShareButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("프로필 공유", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        button.setTitleColor(.black, for: .normal)
        
        button.backgroundColor = .white
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor(red: 213/255, green: 213/255, blue: 213/255, alpha: 1).cgColor
        button.layer.cornerRadius = 8
        
        return button
    }()
}
