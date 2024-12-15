//
//  SearchWordModel.swift
//  kream
//
//  Created by 김미주 on 28/11/2024.
//

import Foundation

struct SearchWordModel {
    let word: String
}

extension SearchWordModel {
    static func dummy() -> [SearchWordModel] {
        return [
            SearchWordModel(word: "채원 슈프림 후리스"),
            SearchWordModel(word: "나이키V2K런"),
            SearchWordModel(word: "뉴발란드996"),
            SearchWordModel(word: "신상 나이키 콜라보"),
            SearchWordModel(word: "허그 FW 패딩"),
            SearchWordModel(word: "벨루어 눕시")
        ]
    }
}
