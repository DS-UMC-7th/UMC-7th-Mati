//
//  MatinKimModel.swift
//  kream
//
//  Created by 김미주 on 09/11/2024.
//

import Foundation
import UIKit

struct MatinKimModel {
    let image: UIImage
}

extension MatinKimModel {
    static func dummy() -> [MatinKimModel] {
        return [
            MatinKimModel(image: .imageMatinkim1),
            MatinKimModel(image: .imageMatinkim2),
            MatinKimModel(image: .imageMatinkim3),
            MatinKimModel(image: .imageMatinkim4),
            MatinKimModel(image: .imageMatinkim5),
            MatinKimModel(image: .imageMatinkim1),
            MatinKimModel(image: .imageMatinkim2),
            MatinKimModel(image: .imageMatinkim3),
            MatinKimModel(image: .imageMatinkim4),
            MatinKimModel(image: .imageMatinkim5)
        ]
    }
}
