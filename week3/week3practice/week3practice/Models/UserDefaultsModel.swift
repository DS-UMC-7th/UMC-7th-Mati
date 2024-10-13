//
//  UserDefaultsModel.swift
//  week3practice
//
//  Created by 김미주 on 08/10/2024.
//

import Foundation

// 글로벌한 상태를 유지해야 하는 데이터를 참조 타입(class)으로 관리함으로써 데이터의 일관성과 효율적인 메모리 관리를 할 수 있음
class UserDefaultsModel {
    private let userDefaults = UserDefaults.standard
    private let userTextKey: String = "userText"
    
    // 유저가 입력한 텍스트 값을 UserDefaults에 저장
    public func saveUserText(_ text: String) {
        userDefaults.set(text, forKey: userTextKey)
    }
    
    // UserDefaults에 저장된 값을 불러옴
    public func loadUserText() -> String? {
        return userDefaults.string(forKey: userTextKey)
    }
}
