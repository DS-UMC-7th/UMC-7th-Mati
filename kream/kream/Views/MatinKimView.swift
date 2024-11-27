//
//  MatinKimView.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class MatinKimView: UIView {
    // MARK: - view
    // 뒤로가기 버튼
    let backButton = UIButton().then {
        $0.setImage(.leftArrowIcon2, for: .normal)
    }
    
    // 이미지
    let imageView = UIImageView().then {
        $0.image = UIImage(resource: .imageMatinkim)
    }
    
    // 옵션
    let optionCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.scrollDirection = .horizontal
        $0.estimatedItemSize = .init(width: 53, height: 53)
        $0.minimumInteritemSpacing = 8
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = true
        $0.register(MatinKimCollectionViewCell.self, forCellWithReuseIdentifier: MatinKimCollectionViewCell.identifier)
    }
    
    // 가격
    let priceTitle = UILabel().then {
        $0.text = "즉시 구매가"
        $0.font = .systemFont(ofSize: 12, weight: .light)
        $0.textColor = .black
    }
    
    let priceLabel = UILabel().then {
        $0.text = "228,000원"
        $0.font = .systemFont(ofSize: 20, weight: .semibold)
        $0.textColor = .black
    }
    
    // 이름
    let nameEng = UILabel().then {
        $0.text = "Matin Kim Logo Coating Jumper"
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.textColor = .black
    }
    
    let nameKor = UILabel().then {
        $0.text = "마뗑킴 로고 코팅 점퍼 블랙"
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.textColor = UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1)
    }
    
    // 구분선
    let topLine = UIView().then {
        $0.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    // 저장
    let saveButton = UIButton().then {
        $0.setImage(.savedIcon, for: .normal)
    }
    
    let saveLabel = UILabel().then {
        $0.text = "2,122"
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.textColor = .black
    }
    
    // 구매 버튼
    let purchaseButton = UIButton().then {
        $0.backgroundColor = UIColor(red: 239/255, green: 98/255, blue: 84/255, alpha: 1)
        $0.layer.cornerRadius = 10
    }
    
    let purchaseTitle = UILabel().then {
        $0.text = "구매"
        $0.font = .systemFont(ofSize: 16, weight: .semibold)
        $0.textColor = .white
    }
    
    let purchasePrice = UILabel().then {
        $0.text = "345,000"
        $0.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.textColor = .white
    }
    
    let purchaseLabel = UILabel().then {
        $0.text = "즉시 구매가"
        $0.font = .systemFont(ofSize: 10, weight: .regular)
        $0.textColor = UIColor(red: 163/255, green: 55/255, blue: 35/255, alpha: 1)
    }
    
    // 판매 버튼
    let saleButton = UIButton().then {
        $0.backgroundColor = UIColor(red: 65/255, green: 185/255, blue: 122/255, alpha: 1)
        $0.layer.cornerRadius = 10
    }
    
    let saleTitle = UILabel().then {
        $0.text = "판매"
        $0.font = .systemFont(ofSize: 16, weight: .semibold)
        $0.textColor = .white
    }
    
    let salePrice = UILabel().then {
        $0.text = "396,000"
        $0.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.textColor = .white
    }
    
    let saleLabel = UILabel().then {
        $0.text = "즉시 판매가"
        $0.font = .systemFont(ofSize: 10, weight: .regular)
        $0.textColor = UIColor(red: 31/255, green: 119/255, blue: 69/255, alpha: 1)
    }

    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - func
    private func setupView() {
        [
            backButton,
            imageView,
            optionCollectionView,
            priceTitle,
            priceLabel,
            nameEng,
            nameKor,
            topLine,
            saveButton,
            saveLabel,
            purchaseButton,
            purchaseTitle,
            purchasePrice,
            purchaseLabel,
            saleButton,
            saleTitle,
            salePrice,
            saleLabel
        ].forEach {
            addSubview($0)
        }
        
        backButton.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(14)
            $0.left.equalToSuperview().offset(15)
            $0.width.height.equalTo(24)
        }
        
        imageView.snp.makeConstraints {
            $0.top.equalTo(backButton.snp.bottom).offset(10)
            $0.horizontalEdges.equalToSuperview()
        }
        
        optionCollectionView.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(53)
        }
        
        priceTitle.snp.makeConstraints {
            $0.top.equalTo(optionCollectionView.snp.bottom).offset(23)
            $0.left.equalToSuperview().offset(16)
        }
        
        priceLabel.snp.makeConstraints {
            $0.top.equalTo(priceTitle.snp.bottom).offset(4)
            $0.left.equalToSuperview().offset(16)
        }
        
        nameEng.snp.makeConstraints {
            $0.top.equalTo(priceLabel.snp.bottom).offset(18)
            $0.left.equalToSuperview().offset(16)
        }
        
        nameKor.snp.makeConstraints {
            $0.top.equalTo(nameEng.snp.bottom).offset(6)
            $0.left.equalToSuperview().offset(16)
        }
        
        topLine.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-95)
            $0.height.equalTo(2)
        }
        
        saveButton.snp.makeConstraints {
            $0.top.equalTo(topLine.snp.bottom).offset(15)
            $0.left.equalToSuperview().offset(17)
        }
        
        saveLabel.snp.makeConstraints {
            $0.top.equalTo(topLine.snp.bottom).offset(36)
            $0.left.equalToSuperview().offset(16)
        }
        
        saleButton.snp.makeConstraints {
            $0.top.equalTo(topLine.snp.bottom).offset(8)
            $0.right.equalToSuperview().offset(-15)
            $0.width.equalTo(147)
            $0.height.equalTo(49)
        }
        
        saleTitle.snp.makeConstraints {
            $0.top.equalTo(saleButton.snp.top).offset(15)
            $0.left.equalTo(saleButton.snp.left).offset(10)
        }
        
        salePrice.snp.makeConstraints {
            $0.top.equalTo(saleButton.snp.top).offset(8)
            $0.right.equalTo(saleButton.snp.right).offset(-35)
        }
        
        saleLabel.snp.makeConstraints {
            $0.top.equalTo(salePrice.snp.bottom).offset(2)
            $0.left.equalTo(salePrice.snp.left)
        }
        
        purchaseButton.snp.makeConstraints {
            $0.top.equalTo(topLine.snp.bottom).offset(8)
            $0.right.equalTo(saleButton.snp.left).offset(-6)
            $0.width.equalTo(147)
            $0.height.equalTo(49)
        }
        
        purchaseTitle.snp.makeConstraints {
            $0.top.equalTo(purchaseButton.snp.top).offset(15)
            $0.left.equalTo(purchaseButton.snp.left).offset(10)
        }
        
        purchasePrice.snp.makeConstraints {
            $0.top.equalTo(purchaseButton.snp.top).offset(8)
            $0.right.equalTo(purchaseButton.snp.right).offset(-35)
        }
        
        purchaseLabel.snp.makeConstraints {
            $0.top.equalTo(purchasePrice.snp.bottom).offset(2)
            $0.left.equalTo(purchasePrice.snp.left)
        }
    }
}
