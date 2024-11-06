//
//  JustDroppedModel.swift
//  kream
//
//  Created by 김미주 on 07/11/2024.
//

import Foundation
import UIKit

struct JustDroppedModel {
    let image: UIImage
    let trade: String
    let saved: UIImage
    let brand: String
    let goods: String
    let price: String
}

extension JustDroppedModel {
    static func dummy() -> [JustDroppedModel] {
        return [
            JustDroppedModel(image: .imageJustDropped1, trade: "거래 12.8만", saved: .iconSavedNone, brand: "MLB", goods: "청키라이너 뉴욕양키스", price: "139,000원"),
            JustDroppedModel(image: .imageJustDropped2, trade: "거래 15.6만", saved: .iconSavedFilled, brand: "Jordan", goods: "Jordan 1 Retro High OG Yellow Ochre", price: "228,000원"),
            JustDroppedModel(image: .imageJustDropped3, trade: "거래 12.8만", saved: .iconSavedNone, brand: "Human Made", goods: "Human Made x Kaws Varsity Jacket #1 Black", price: "2,000,000원")
        ]
    }
}
