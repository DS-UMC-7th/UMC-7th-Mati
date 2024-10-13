//
//  LoginModel.swift
//  week1kream
//
//  Created by 김미주 on 28/09/2024.
//

import Foundation

class LoginModel {
    private let userDefaults = UserDefaults.standard
    private let emailKey: String = "email"
    private let passwordKey: String = "password"
    
    public func saveEmail(_ text: String) {
        userDefaults.set(text, forKey: emailKey)
    }
    
    public func savePassword(_ text: String) {
        userDefaults.set(text, forKey: passwordKey)
    }
    
    public func loadEmail() -> String? {
        return userDefaults.string(forKey: emailKey)
    }
    
    public func loadPassword() -> String? {
        return userDefaults.string(forKey: passwordKey)
    }
}
