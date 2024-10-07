//
//  ViewUpDownModel.swift
//  week1practice
//
//  Created by 김미주 on 27/09/2024.
//

import Foundation

struct CountUpDownModel {
    var count: Int = 0
    
    // count 변수 1 증가
    mutating func increaseCount() {
        self.count += 1
    }
    
    // count 변수 1 감소
    mutating func decreaseCount() {
        self.count -= 1
    }
    
}

