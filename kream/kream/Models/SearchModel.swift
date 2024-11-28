//
//  SearchModel.swift
//  kream
//
//  Created by 김미주 on 29/11/2024.
//

import Foundation

struct SearchModel {
    let productName: String
}

// 더미 데이터
extension SearchModel {
    static func dummy() -> [SearchModel] {
        return [
            SearchModel(productName: "팀버랜드"),
            SearchModel(productName: "슈프림 팀버랜드"),
            SearchModel(productName: "팀버랜드 6인치"),
        ]
    }
}
