//
//  DiceView.swift
//  week3practice2
//
//  Created by 김미주 on 10/10/2024.
//

import UIKit

class DiceView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 제목
    private lazy var title: UILabel = {
        let label = UILabel()
        
        label.text = "주사위 테이블 뷰 만들기"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        
        return label
    }()
    
    // 테이블 뷰
    public lazy var tableView: UITableView = {
        let table = UITableView()
        
        table.register(DiceCell.self, forCellReuseIdentifier: DiceCell.identifier)
        table.separatorStyle = .singleLine
        
        return table
    }()
    
    private func setViews() {
        self.addSubview(title)
        self.addSubview(tableView)
    }
    
    private func setConstraints() {
        title.snp.makeConstraints {
            $0.top.equalToSuperview().offset(50)
            $0.left.equalToSuperview().offset(12)
            $0.right.equalToSuperview().offset(-183)
        }
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(title.snp.bottom).offset(14)
            $0.left.right.bottom.equalToSuperview()
        }
    }
}
