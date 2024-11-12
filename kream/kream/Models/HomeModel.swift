//
//  HomeModel.swift
//  kream
//
//  Created by 김미주 on 05/11/2024.
//

import UIKit

struct HomeModel {
    let image: UIImage
    let title: String
}

extension HomeModel {
    static func dummy() -> [HomeModel] {
        return [
            HomeModel(image: .imageHome1, title: "크림 드로우"),
            HomeModel(image: .imageHome2, title: "실시간 차트"),
            HomeModel(image: .imageHome3, title: "남성 추천"),
            HomeModel(image: .imageHome4, title: "여성 추천"),
            HomeModel(image: .imageHome5, title: "색다른 추천"),
            HomeModel(image: .imageHome6, title: "정가 아래"),
            HomeModel(image: .imageHome7, title: "윤세 24AW"),
            HomeModel(image: .imageHome8, title: "올해의 베스트"),
            HomeModel(image: .imageHome9, title: "10월 베네핏"),
            HomeModel(image: .imageHome10, title: "아크네 선물")
        ]
    }
}
