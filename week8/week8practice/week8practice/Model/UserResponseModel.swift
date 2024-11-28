//
//  UserResponseModel.swift
//  week8practice
//
//  Created by 김미주 on 28/11/2024.
//

import Foundation

struct UserResponseModel: Codable {
    let id: Int
    let email: String
    let password: String
    let name: String
    let role: String
    let avatar: String
}
