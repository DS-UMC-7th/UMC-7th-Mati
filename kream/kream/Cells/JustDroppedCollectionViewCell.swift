//
//  JustDroppedCollectionViewCell.swift
//  kream
//
//  Created by 김미주 on 07/11/2024.
//

import UIKit
import Kingfisher

class JustDroppedCollectionViewCell: UICollectionViewCell {
    static let identifier = "JustDroppedCollectionViewCell"
    
    // 이미지
    let imageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.layer.cornerRadius = 12
        $0.clipsToBounds = true
        $0.backgroundColor = .white
    }
    
    // 거래량
    let tradeLabel = UILabel().then {
        $0.text = "거래"
        $0.font = .systemFont(ofSize: 10, weight: .regular)
        $0.textColor = UIColor(red: 64/255, green: 69/255, blue: 75/255, alpha: 1)
    }
    
    // 저장 아이콘
    let savedIcon = UIImageView()
    
    // 브랜드명
    let brandLabel = UILabel().then {
        $0.text = "브랜드"
        $0.font = .systemFont(ofSize: 12, weight: .semibold)
        $0.textColor = .black
    }
    
    // 상품명
    let goodsLabel = UILabel().then {
        $0.text = "상품"
        $0.font = .systemFont(ofSize: 12, weight: .light)
        $0.textColor = .black
        $0.numberOfLines = 2
    }
    
    // 가격
    let priceLabel = UILabel().then {
        $0.text = "가격"
        $0.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.textColor = .black
    }
    
    // 즉시 구매가
    let purchaseLabel = UILabel().then {
        $0.text = "즉시 구매가"
        $0.font = .systemFont(ofSize: 10, weight: .light)
        $0.textColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1)
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
        [
            imageView,
            tradeLabel,
            savedIcon,
            brandLabel,
            goodsLabel,
            priceLabel,
            purchaseLabel
        ].forEach {
            addSubview($0)
        }
        
        imageView.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview()
            $0.width.height.equalTo(142)
        }
        
        tradeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(8)
            $0.right.equalToSuperview().offset(-8)
        }
        
        savedIcon.snp.makeConstraints {
            $0.right.equalTo(imageView.snp.right).offset(-10)
            $0.bottom.equalTo(imageView.snp.bottom).offset(-10)
            $0.width.equalTo(22)
            $0.height.equalTo(20)
        }
        
        brandLabel.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(8)
            $0.left.equalToSuperview().offset(4)
        }
        
        goodsLabel.snp.makeConstraints {
            $0.top.equalTo(brandLabel.snp.bottom).offset(3)
            $0.left.equalToSuperview().offset(4)
            $0.width.equalTo(142)
        }
        
        purchaseLabel.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.left.equalToSuperview().offset(4)
        }
        
        priceLabel.snp.makeConstraints {
            $0.bottom.equalTo(purchaseLabel.snp.top).offset(-2)
            $0.left.equalToSuperview().offset(4)
        }
    }
}
