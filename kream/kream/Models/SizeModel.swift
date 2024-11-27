//
//  SizeModel.swift
//  kream
//
//  Created by 김미주 on 12/11/2024.
//

import Foundation
import UIKit

struct SizeModel {
    let size: String
    let price: String
}

extension SizeModel {
    static func dummy() -> [SizeModel] {
        return [
            SizeModel(size: "S", price: "360,000"),
            SizeModel(size: "M", price: "360,000"),
            SizeModel(size: "L", price: "360,000"),
            SizeModel(size: "XL", price: "360,000"),
            SizeModel(size: "XXL", price: "360,000")
        ]
    }
}
