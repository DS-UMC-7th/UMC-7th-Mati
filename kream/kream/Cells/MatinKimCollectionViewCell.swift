//
//  MatinKimCollectionViewCell.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class MatinKimCollectionViewCell: UICollectionViewCell {
    static let identifier = "MatinKimCollectionViewCell"
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupView() {
        addSubview(imageView)
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
