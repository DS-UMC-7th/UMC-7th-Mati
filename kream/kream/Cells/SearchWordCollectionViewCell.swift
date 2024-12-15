//
//  SearchWordCollectionViewCell.swift
//  kream
//
//  Created by 김미주 on 28/11/2024.
//

import UIKit

class SearchWordCollectionViewCell: UICollectionViewCell {
    static let identifier = "SearchWordCollectionViewCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - layout
    var wordLabel = UILabel().then {
        $0.text = "추천 검색어"
        $0.font = .systemFont(ofSize: 13.5, weight: .regular)
        $0.textColor = UIColor(red: 5/255, green: 5/255, blue: 5/255, alpha: 1)
    }
    
    let wordView = UIView().then {
        $0.backgroundColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        
        $0.layer.borderWidth = 1
        $0.layer.borderColor = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1).cgColor
        $0.layer.cornerRadius = 16
    }
    
    // MARK: - function
    private func setupView() {
        [
            wordView,
            wordLabel
        ].forEach {
            addSubview($0)
        }
        
        wordView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.height.equalTo(32)
        }
        
        wordLabel.snp.makeConstraints {
            $0.left.equalTo(wordView.snp.left).offset(11)
            $0.right.equalTo(wordView.snp.right).offset(-11)
            $0.top.equalTo(wordView.snp.top).offset(8)
        }
    }
}
