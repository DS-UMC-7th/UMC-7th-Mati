//
//  HomeView.swift
//  kream
//
//  Created by 김미주 on 04/11/2024.
//

import UIKit
import Then

class HomeView: UIView {
    // 검색창
    let searchBar = UITextField().then {
        $0.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        $0.layer.cornerRadius = 12
        
        $0.placeholder = "브랜드, 상품, 프로필, 태그 등"
        $0.addLeftPadding()
    }
    
    // 알림
    let alertImgae = UIImageView().then {
        $0.image = UIImage(named: "icon_alert")
    }
    
    // 메뉴
    let menuBar = UISegmentedControl(items: ["추천", "랭킹", "발매정보", "럭셔리", "남성", "여성"])
    
    // 광고 이미지
    let adImage = UIImageView().then {
        $0.image = UIImage(named: "image_ad")
    }
    
    // 컬렉션뷰
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 61, height: 81)
        $0.minimumLineSpacing = 9
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = false
        $0.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
    }
    
    // 구분선
    let divideLine = UIView().then {
        $0.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    private func setupView() {
        [
            searchBar,
            alertImgae,
            menuBar,
            adImage,
            collectionView,
            divideLine
        ].forEach {
            addSubview($0)
        }
        
        searchBar.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(6)
            $0.left.equalToSuperview().offset(16)
            
            $0.height.equalTo(40)
        }
        
        alertImgae.snp.makeConstraints {
            $0.top.equalTo(searchBar.snp.top).offset(8)
            $0.right.equalToSuperview().offset(-16)
            $0.left.equalTo(searchBar.snp.right).offset(15)
            
            $0.width.height.equalTo(24)
        }
        
        menuBar.snp.makeConstraints {
            $0.top.equalTo(searchBar.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        adImage.snp.makeConstraints {
            $0.top.equalTo(menuBar.snp.bottom)
            $0.left.right.equalToSuperview()
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(adImage.snp.bottom).offset(20)
            $0.left.right.equalToSuperview().inset(16)
            $0.height.equalTo(182)
        }
        
        divideLine.snp.makeConstraints {
            $0.top.equalTo(collectionView.snp.bottom).offset(30)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(1)
        }
    }
}
