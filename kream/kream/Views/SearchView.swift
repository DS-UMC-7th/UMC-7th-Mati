//
//  SearchView.swift
//  kream
//
//  Created by 김미주 on 06/11/2024.
//

import UIKit
import Then

class SearchView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    // MARK: - view
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
        $0.spacing = 11
        $0.distribution = .fill
    }
    
    // 구분선
    let lineView = UIView().then {
        $0.backgroundColor = UIColor(red: 221/255, green: 221/255, blue: 221/255, alpha: 1)
    }
    
    // 추천 검색어
    let searchTitle = UILabel().then {
        $0.text = "추천 검색어"
        $0.font = .systemFont(ofSize: 15, weight: .heavy)
        $0.textColor = .black
    }
    
    // MARK: - function
    private func makeStackView() {
        [searchBar,cancelButton].forEach { searchStackView.addArrangedSubview($0) }
    }
    
    private func setView() {
        makeStackView()
        
        [
            searchStackView,
            lineView,
            searchTitle
        ].forEach {
            addSubview($0)
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
        
        searchTitle.snp.makeConstraints {
            $0.top.equalTo(lineView.snp.bottom).offset(30)
            $0.left.equalToSuperview().offset(16)
        }
    }

}
