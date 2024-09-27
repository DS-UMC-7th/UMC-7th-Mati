//
//  CountUpDownView.swift
//  week1practice
//
//  Created by 김미주 on 27/09/2024.
//

import UIKit

class CountUpDownView: UIView {

    // init(frame:) 이니셜라이저를 통해 코드에서 뷰를 생성할 수 있음
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    // 스토리보드를 사용할 경우에는 지원되지 않도록 함
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
}
