//
//  SearchModel.swift
//  week7practice
//
//  Created by 김미주 on 19/11/2024.
//

import Foundation

struct SearchModel: Codable {
    let documents: [DetailDocument]
}

struct DetailDocument: Codable {
    let contents: String
    let datetime: String
    let title: String
    let url: String
}
