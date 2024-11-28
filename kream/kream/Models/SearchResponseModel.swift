//
//  SearchResponseModel.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//
import Foundation

struct SearchResponseModel: Codable {
    let products: [Product]
}

struct Product: Codable {
    let title: String
}
