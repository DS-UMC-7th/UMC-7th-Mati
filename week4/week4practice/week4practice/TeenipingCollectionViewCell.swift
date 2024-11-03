//
//  TeenipingCollectionViewCell.swift
//  week4practice
//
//  Created by 김미주 on 04/11/2024.
//

import UIKit

class TeenipingCollectionViewCell: UICollectionViewCell {
    static let identifier = "TeenipingCollectionViewCell"
    
    // 이미지
    let imageView = UIImageView().then {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 8
        $0.clipsToBounds = true
    }
    
    // 이름
    let titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 10, weight: .semibold)
        $0.textColor = .black
        $0.text = "티니핑"
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(imageView)
        addSubview(titleLabel)
        
        imageView.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview()
            $0.height.equalTo(120)
        }
        
        titleLabel.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.leading.equalToSuperview().offset(4)
        }
    }
}
