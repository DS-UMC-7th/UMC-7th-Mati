//
//  MatinKimView.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import UIKit

class MatinKimView: UIView {
    // MARK: - view
    // 뒤로가기 버튼
    let backButton = UIButton().then {
        $0.setImage(.leftArrowIcon2, for: .normal)
    }
    
    // 이미지
    
    // 옵션
    
    // 가격
    
    // 이름
    
    // 구분선
    
    // 저장
    
    // 구매 버튼
    
    // 판매 버튼

    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - func
    private func setupView() {
        [
            backButton
        ].forEach {
            addSubview($0)
        }
        
        backButton.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).offset(14)
            $0.left.equalToSuperview().offset(15)
            $0.width.height.equalTo(24)
        }
    }
}
