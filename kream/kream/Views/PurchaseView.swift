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
            sizeCollectionView
        ].forEach {
            addSubview($0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(20)
            $0.horizontalEdges.equalToSuperview().inset(160)
        }
        
        subTitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom)
            $0.horizontalEdges.equalToSuperview().inset(158)
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
            $0.height.equalTo(102)
        }
    }

}
