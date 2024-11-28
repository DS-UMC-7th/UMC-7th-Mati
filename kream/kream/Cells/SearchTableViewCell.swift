//
//  SearchTableViewCell.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    static let identifier = "SearchTableViewCell"


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
        setView()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.nameLabel.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View
    
    // 상품 이름
    let nameLabel = UILabel().then {
        $0.text = "상품 이름"
        $0.font = .systemFont(ofSize: 14, weight: .semibold)
    }
    
    // MARK: - function
    
    private func setView() {
        addSubview(nameLabel)
        
        nameLabel.snp.makeConstraints {
            $0.top.left.right.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-31)
        }
    }

}
