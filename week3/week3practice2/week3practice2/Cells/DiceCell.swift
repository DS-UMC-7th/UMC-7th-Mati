//
//  DiceCell.swift
//  week3practice2
//
//  Created by 김미주 on 10/10/2024.
//

import UIKit
import SnapKit

class DiceCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // 코드로 셀을 초기화할 때 호출되는 메서드
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setView()
        self.setConstraints()
    }
    
    // 메서드를 오버라이드하여 셀이 재사용되기 전에 초기화된 상태로 만듦
    override func prepareForReuse() {
        super.prepareForReuse()
        self.diceImageView.image = nil
        self.diceName.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View
    
    // 주사위 이미지
    private lazy var diceImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    // 주사위 이름
    private lazy var diceName = {
        let name = UILabel()
        
        name.font = UIFont.systemFont(ofSize: 20)
        name.textColor = .black
        
        return name
    }()

    private func setView() {
        self.addSubview(diceImageView)
        self.addSubview(diceName)
    }
    
    private func setConstraints() {
        diceImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(11)
            $0.bottom.equalToSuperview().offset(-10)
            $0.left.equalToSuperview().offset(13)
            $0.width.height.equalTo(75)
        }
        
        diceName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(36.5)
            $0.left.equalTo(diceImageView.snp.right).offset(87)
            $0.right.equalToSuperview().offset(-144)
        }
    }
    
    // MARK: - 값 설정 메서드 - public
    public func configure(model: DiceModel) {
        self.diceImageView.image = UIImage(named: model.diceImage)
        self.diceName.text = model.diceName
    }
}
