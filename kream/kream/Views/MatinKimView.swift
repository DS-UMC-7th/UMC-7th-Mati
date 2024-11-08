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
    
    // 저장
    
    // 구매 버튼
    
    // 판매 버튼

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
    }
}
