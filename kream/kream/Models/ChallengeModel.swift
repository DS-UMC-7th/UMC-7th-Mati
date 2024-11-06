//
//  ChallengeModel.swift
//  kream
//
//  Created by 김미주 on 07/11/2024.
//

import Foundation
import UIKit

struct ChallengeModel {
    let image: UIImage
    let id: String
}

extension ChallengeModel {
    static func dummy() -> [ChallengeModel] {
        return [
            ChallengeModel(image: .imageChallenge1, id: "@katarinabluu"),
            ChallengeModel(image: .imageChallenge2, id: "@imwinter"),
            ChallengeModel(image: .imageChallenge3, id: "@thousand_wooo")
        ]
    }
}
