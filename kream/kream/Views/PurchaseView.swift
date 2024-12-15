//
//  PurchaseView.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class PurchaseView: UIView {
    // MARK: - view
    // 타이틀
    let titleLabel = UILabel().then {
        $0.text = "구매하기"
        $0.font = .systemFont(ofSize: 15, weight: .bold)
        $0.textColor = .black
        $0.textAlignment = .center
    }
    
    let subTitleLabel = UILabel().then {
        $0.text = "(가격 단위: 원)"
        $0.font = .systemFont(ofSize: 10, weight: .regular)
        $0.textColor = UIColor(red: 146/255, green: 146/255, blue: 146/255, alpha: 1)
        $0.textAlignment = .center
    }
    
    // x 버튼
    let cancelButton = UIButton().then {
        $0.setImage(.iconCancel, for: .normal)
    }
    
    // 상품 이미지
    let imageView = UIImageView().then {
        $0.image = .imageMatinkim
        $0.layer.cornerRadius = 8
        $0.clipsToBounds = true
    }
    
    // 상품 이름
    let nameEng = UILabel().then {
        $0.text = "Matin Kim Logo Coating Jumper"
        $0.font = .systemFont(ofSize: 14, weight: .regular)
        $0.textColor = .black
    }
    
    let nameKor = UILabel().then {
        $0.text = "마뗑킴 로고 코팅 점퍼 블랙"
        $0.font = .systemFont(ofSize: 12, weight: .regular)
        $0.textColor = UIColor(red: 156/255, green: 156/255, blue: 156/255, alpha: 1)
    }
    
    // 사이즈 - 컬렉션 뷰
    let sizeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 110, height: 47)
        $0.minimumInteritemSpacing = 7
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = false
        $0.register(SizeCollectionViewCell.self, forCellWithReuseIdentifier: SizeCollectionViewCell.identifier)
    }
    
    // 구분선
    let topLine = UIView().then {
        $0.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    // 빠른배송 버튼
    let quickButton = UIButton().then {
        $0.backgroundColor = UIColor(red: 239/255, green: 98/255, blue: 84/255, alpha: 1)
        $0.layer.cornerRadius = 10
    }
    
    let quickPrice = UILabel().then {
        $0.text = "345,000"
        $0.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.textColor = .white
    }
    
    let quickLabel = UILabel().then {
        $0.text = "빠른배송(1~2일 소요)"
        $0.font = .systemFont(ofSize: 10, weight: .regular)
        $0.textColor = UIColor(red: 255/255, green: 202/255, blue: 185/255, alpha: 1)
    }
    
    // 일반배송 버튼
    let normalButton = UIButton().then {
        $0.backgroundColor = UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1)
        $0.layer.cornerRadius = 10
    }
    
    let normalPrice = UILabel().then {
        $0.text = "407,000"
        $0.font = .systemFont(ofSize: 13, weight: .semibold)
        $0.textColor = .white
    }
    
    let normalLabel = UILabel().then {
        $0.text = "일반배송(5~7일 소요)"
        $0.font = .systemFont(ofSize: 10, weight: .regular)
        $0.textColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1)
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
    
    // MARK: - function
    private func setupView() {
        [
            titleLabel,
            subTitleLabel,
            cancelButton,
            imageView,
            nameEng,
            nameKor,
            sizeCollectionView,
            topLine,
            quickButton,
            quickPrice,
            quickLabel,
            normalButton,
            normalPrice,
            normalLabel
        ].forEach {
            addSubview($0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(20)
            $0.horizontalEdges.equalToSuperview().inset(160)
        }
        
        subTitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom)
            $0.horizontalEdges.equalToSuperview()
        }
        
        cancelButton.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(20)
            $0.right.equalToSuperview().offset(-16)
            $0.width.height.equalTo(20)
        }
        
        imageView.snp.makeConstraints {
            $0.top.equalTo(subTitleLabel.snp.bottom).offset(11)
            $0.left.equalToSuperview().offset(16)
            $0.width.height.equalTo(91)
        }
        
        nameEng.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.top).offset(18)
            $0.left.equalTo(imageView.snp.right).offset(15)
        }
        
        nameKor.snp.makeConstraints {
            $0.top.equalTo(nameEng.snp.bottom).offset(4)
            $0.left.equalTo(nameEng.snp.left)
        }
        
        sizeCollectionView.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(35)
            $0.horizontalEdges.equalToSuperview().inset(15)
            $0.height.equalTo(104)
        }
        
        topLine.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-95)
            $0.height.equalTo(2)
        }
        
        quickButton.snp.makeConstraints {
            $0.top.equalTo(topLine.snp.bottom).offset(8)
            $0.left.equalToSuperview().offset(18)
            $0.width.equalTo(168)
            $0.height.equalTo(52)
        }
        
        quickPrice.snp.makeConstraints {
            $0.top.equalTo(quickButton.snp.top).offset(11)
            $0.centerX.equalTo(quickButton)
        }
        
        quickLabel.snp.makeConstraints {
            $0.bottom.equalTo(quickButton.snp.bottom).offset(-12)
            $0.centerX.equalTo(quickButton)
        }
        
        normalButton.snp.makeConstraints {
            $0.top.equalTo(topLine.snp.bottom).offset(8)
            $0.right.equalToSuperview().offset(-18)
            $0.width.equalTo(168)
            $0.height.equalTo(52)
        }
        
        normalPrice.snp.makeConstraints {
            $0.top.equalTo(normalButton.snp.top).offset(11)
            $0.centerX.equalTo(normalButton)
        }
        
        normalLabel.snp.makeConstraints {
            $0.bottom.equalTo(normalButton.snp.bottom).offset(-12)
            $0.centerX.equalTo(normalButton)
        }
    }

}
