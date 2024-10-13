//
//  LoginModel.swift
//  week1kream
//
//  Created by 김미주 on 28/09/2024.
//

import Foundation

class LoginModel {
    private let userDefaults = UserDefaults.standard
    private let email: String = ""
    private let password: String = ""
    
    public func saveEmail(_ text: String) {
        userDefaults.set(text, forKey: email)
    }
    
    public func savePassword(_ text: String) {
        userDefaults.set(text, forKey: password)
    }
    
    public func loadEmail() -> String? {
        return userDefaults.string(forKey: email)
    }
    
    public func loadPassword() -> String? {
        return userDefaults.string(forKey: password)
    }
}
