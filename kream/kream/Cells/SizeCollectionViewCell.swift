//
//  SizeCollectionViewCell.swift
//  kream
//
//  Created by 김미주 on 12/11/2024.
//

import UIKit

class SizeCollectionViewCell: UICollectionViewCell {
    static let identifier = "SizeCollectionViewCell"
    
    // 버튼
    let sizeButton = UIButton().then {
        $0.layer.borderColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1).cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 10
    }
    
    // 사이즈
    let sizeLabel = UILabel().then {
        $0.text = "size"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .black
    }
    
    // 가격
    let priceLabel = UILabel().then {
        $0.text = "price"
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.textColor = UIColor(red: 217/255, green: 90/255, blue: 93/255, alpha: 1)
    }
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - function
    private func setView() {
        [
            sizeButton,
            sizeLabel,
            priceLabel
        ].forEach {
            addSubview($0)
        }
        
        sizeButton.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(110)
            $0.height.equalTo(47)
        }
        
        sizeLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(8)
        }
        
        priceLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(sizeLabel.snp.bottom)
        }
    }
}
