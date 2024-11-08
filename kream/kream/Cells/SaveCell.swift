//
//  SaveCell.swift
//  kream
//
//  Created by 김미주 on 13/10/2024.
//

import UIKit
import SnapKit

class SaveCell: UITableViewCell {
    
    static let identifier = "SaveCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setView()
        self.setConstraints()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.goodsImage.image = nil
        self.goodsName.text = nil
        self.goodsDescription.text = nil
        self.goodsPrice.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View
    
    // 상품 이미지
    private lazy var goodsImage = {
        let image = UIImageView()
        
        image.layer.cornerRadius = 10
        
        return image
    }()
    
    // 상품 이름
    private lazy var goodsName = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .black
        
        return label
    }()
    
    // 상품 설명
    private lazy var goodsDescription = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 9, weight: .medium)
        label.textColor = UIColor(red: 161/255, green: 161/255, blue: 161/255, alpha: 1)
        label.numberOfLines = 2
        
        return label
    }()
    
    // 상품 가격
    private lazy var goodsPrice = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .black
        
        return label
    }()
    
    // 저장 버튼
    private lazy var saveButton = {
        let button = UIButton()
        
        button.setImage(UIImage(named: "save_icon"), for: .normal)
        
        return button
    }()
    
    // MARK: - 레이아웃 설정
    private func setView() {
        self.addSubview(goodsImage)
        self.addSubview(goodsName)
        self.addSubview(goodsDescription)
        self.addSubview(goodsPrice)
        self.addSubview(saveButton)
    }
    
    private func setConstraints() {
        goodsImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(13)
            $0.left.equalToSuperview().offset(13)
            $0.bottom.equalToSuperview().offset(-14)
            $0.width.height.equalTo(72)
        }
        
        goodsName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(13)
            $0.left.equalTo(goodsImage.snp.right).offset(13)
            $0.height.equalTo(19)
        }
        
        goodsDescription.snp.makeConstraints {
            $0.top.equalTo(goodsName.snp.bottom)
            $0.left.equalTo(goodsImage.snp.right).offset(13)
            $0.width.equalTo(153)
            $0.height.equalTo(33)
        }
        
        goodsPrice.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-10)
            $0.right.equalToSuperview().offset(-16)
            $0.height.equalTo(22)
        }
        
        saveButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(18)
            $0.right.equalToSuperview().offset(-17)
            $0.width.equalTo(14)
            $0.height.equalTo(18)
        }

    }
    
    // MARK: - 값 설정
    public func configure(model: SaveModel) {
        self.goodsImage.image = UIImage(named: model.goodsImage)
        self.goodsName.text = model.goodsName
        self.goodsDescription.text = model.goodsDescription
        self.goodsPrice.text = model.goodsPrice
    }
}
