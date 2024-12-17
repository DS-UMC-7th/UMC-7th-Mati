//
//  ChallengeCollectionViewCell.swift
//  kream
//
//  Created by 김미주 on 07/11/2024.
//

import UIKit
import Kingfisher

class ChallengeCollectionViewCell: UICollectionViewCell {
    static let identifier = "ChallengeCollectionViewCell"
    
    // 이미지
    let imageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 8
        $0.clipsToBounds = true
    }
    
    // 아이디
    let idLabel = UILabel().then {
        $0.text = "@"
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.textColor = .white
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func loadImage(from url: String) {
        if let imageURL = URL(string: url) {
            imageView.kf.setImage(with: imageURL)
        }
    }
    
    private func setupView() {
        addSubview(imageView)
        addSubview(idLabel)
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(124)
            $0.height.equalTo(165)
        }
        
        idLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(10)
            $0.bottom.equalToSuperview().offset(-11)
        }
    }
}
