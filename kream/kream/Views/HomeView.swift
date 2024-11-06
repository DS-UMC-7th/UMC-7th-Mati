//
//  HomeView.swift
//  kream
//
//  Created by 김미주 on 04/11/2024.
//

import UIKit
import SnapKit
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
    let menuBar = UISegmentedControl(items: ["추천", "랭킹", "발매정보", "럭셔리", "남성", "여성"]).then {
        $0.selectedSegmentIndex = 0
        
        $0.setDividerImage(UIImage(), forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        
        $0.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 16, weight: .light)
        ], for: .normal)
        $0.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 16, weight: .bold)
        ], for: .selected)
    }
    
    let underLine = UIView().then {
        $0.backgroundColor = .black
    }
    
    // 광고 이미지
    let adImage = UIImageView().then {
        $0.image = UIImage(named: "image_ad")
    }
    
    // 컬렉션뷰
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 61, height: 81)
        $0.minimumInteritemSpacing = 9
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = false
        $0.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
    }
    
    // 구분선
    let divideLine = UIView().then {
        $0.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
    }
    
    // Just Dropped
    let justTitleLabel = UILabel().then {
        $0.text = "Just Dropped"
        $0.font = .systemFont(ofSize: 16, weight: .semibold)
        $0.textColor = .black
    }
    
    let justSubLabel = UILabel().then {
        $0.text = "발매 상품"
        $0.font = .systemFont(ofSize: 13, weight: .light)
        $0.textColor = UIColor(red: 135/255, green: 135/255, blue: 135/255, alpha: 1)
    }
    
    // 컬렉션뷰2
    let justCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.scrollDirection = .horizontal // 셀 가로로 배치
        $0.estimatedItemSize = .init(width: 142, height: 237)
        $0.minimumInteritemSpacing = 8
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = true
        $0.register(JustDroppedCollectionViewCell.self, forCellWithReuseIdentifier: JustDroppedCollectionViewCell.identifier)
    }
    
    // 구분선
    let divideLine2 = UIView().then {
        $0.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
    }
    
    // 스크롤뷰
    let scrollView = UIScrollView().then {
        $0.showsVerticalScrollIndicator = false
        $0.showsHorizontalScrollIndicator = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupScrollView()
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
            underLine,
            scrollView
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
            $0.left.right.equalToSuperview()
        }
        
        underLine.snp.makeConstraints {
            $0.top.equalTo(menuBar.snp.bottom)
            $0.left.equalTo(menuBar.snp.left)
            $0.width.equalTo(menuBar.snp.width).dividedBy(6)
            $0.height.equalTo(2)
        }
        
        scrollView.snp.makeConstraints {
            $0.top.equalTo(underLine.snp.bottom)
            $0.left.right.equalToSuperview()
            $0.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
    
    private func setupScrollView() {
        [
            adImage,
            collectionView,
            divideLine,
            justTitleLabel,
            justSubLabel,
            justCollectionView,
            divideLine2
        ].forEach {
            scrollView.addSubview($0)
        }
        
        adImage.snp.makeConstraints {
            $0.top.equalTo(scrollView.snp.top)
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
        
        justTitleLabel.snp.makeConstraints {
            $0.top.equalTo(divideLine.snp.bottom).offset(20)
            $0.left.equalToSuperview().offset(16)
        }
        
        justSubLabel.snp.makeConstraints {
            $0.top.equalTo(justTitleLabel.snp.bottom).offset(4)
            $0.left.equalToSuperview().offset(16)
        }
        
        justCollectionView.snp.makeConstraints {
            $0.top.equalTo(justSubLabel.snp.bottom).offset(14)
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview()
            $0.height.equalTo(237)
            $0.bottom.equalToSuperview()
        }
        
        divideLine2.snp.makeConstraints {
            $0.top.equalTo(justCollectionView.snp.bottom).offset(30)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(1)
        }
    }

}
