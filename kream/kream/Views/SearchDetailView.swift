//
//  SearchDetailView.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//

import UIKit

class SearchDetailView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // MARK: - view
    // 뒤로가기 버튼
    let backButton = UIButton().then {
        $0.setImage(UIImage.leftArrowIcon, for: .normal)
    }
    
    // 검색 바
    let searchBar = UITextField().then {
        $0.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        $0.layer.cornerRadius = 12
        
        $0.placeholder = "브랜드, 상품, 프로필, 태그 등"
        $0.leftViewMode = .always
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
    }
    
    // 취소 버튼
    let cancelButton = UIButton().then {
        $0.setTitle("취소", for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        $0.setTitleColor(UIColor(red: 33/255, green: 33/255, blue: 33/255, alpha: 1), for: .normal)
    }

    // 검색 스택뷰
    let searchStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.spacing = 13
        $0.distribution = .fill
    }
    
    // 구분선
    let lineView = UIView().then {
        $0.backgroundColor = UIColor(red: 221/255, green: 221/255, blue: 221/255, alpha: 1)
    }
    
    // 검색 결과 테이블뷰
    let resultTableView = UITableView().then {
        $0.register(SearchTableViewCell.self, forCellReuseIdentifier: SearchTableViewCell.identifier)
        $0.separatorStyle = .none
    }
    
    
    // MARK: - func
    private func makeStackView() {
        [backButton, searchBar, cancelButton].forEach { searchStackView.addArrangedSubview($0) }
    }
    
    private func setView() {
        makeStackView()
        
        [
            searchStackView,
            lineView,
            resultTableView
        ].forEach {
            addSubview($0)
        }
        
        backButton.snp.makeConstraints {
            $0.width.equalTo(24)
        }
        
        searchStackView.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(7)
            $0.horizontalEdges.equalToSuperview().inset(16)
        }
        
        searchBar.snp.makeConstraints {
            $0.height.equalTo(39)
        }
        
        lineView.snp.makeConstraints {
            $0.top.equalTo(searchStackView.snp.bottom).offset(11)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(0.5)
        }
        
        resultTableView.snp.makeConstraints {
            $0.top.equalTo(lineView.snp.bottom).offset(31)
            $0.horizontalEdges.equalToSuperview().inset(16)
            $0.bottom.equalTo(safeAreaLayoutGuide)
        }
    }

}
