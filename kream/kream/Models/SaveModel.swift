//
//  SaveModel.swift
//  kream
//
//  Created by 김미주 on 13/10/2024.
//

import Foundation

struct SaveModel {
    let goodsImage: String
    let goodsName: String
    let goodsDescription: String
    let goodsPrice: String
}

// 더미 데이터
final class dummySaveModel {
    static let saveDatas: [SaveModel] = [
        SaveModel(goodsImage: "image1", goodsName: "손오공이 잃어버린 머리띠 반쪽", goodsDescription: "손오공이 장난치다가 머리띠 반쪽 잘라서 어딘가 숨겨둔 역사속 물건!!", goodsPrice: "942,192,000원"),
        SaveModel(goodsImage: "image2", goodsName: "골드 반지", goodsDescription: "결혼을 준비하는 당신?! 약혼녀에게 이 반지를 선물하는 건 어때요?!", goodsPrice: "12,000원"),
        SaveModel(goodsImage: "image3", goodsName: "하얀 신발", goodsDescription: "짝퉁 나이키 신발! 정말 푹신푹신해서 걷다가 졸려서 넘어지지 않게 조심하세요", goodsPrice: "90,000원"),
        SaveModel(goodsImage: "image4", goodsName: "에베레스트 다이아 반지", goodsDescription: "에베레스트 올라가서 다이아 구하고 만든 반지,,! 과연 이것을 누가 사갈 것인가??", goodsPrice: "1,292,999,000원"),
        SaveModel(goodsImage: "image5", goodsName: "아디다스다 신발", goodsDescription: "아디다스 처럼 보이지만 아디다스가 아닐지도 모르는 신발 이 신발의 주인은 너야~~", goodsPrice: "120,000원"),
        SaveModel(goodsImage: "image6", goodsName: "황제 잠옷", goodsDescription: "어느 나라의 황제가 입었다는 잠옷 크리스마스 트리같이 보이는 디자인!", goodsPrice: "120,000,000원"),
        SaveModel(goodsImage: "image7", goodsName: "고장난 기타", goodsDescription: "블라블라블라블라 블라블라블라블라블라", goodsPrice: "120,000원"),
        SaveModel(goodsImage: "image8", goodsName: "하얀 음료", goodsDescription: "이 음료를 마시면 건강해져요 근데 어디가 건강해질까요? 한 번 마셔야겠어요", goodsPrice: "120,000원"),
        SaveModel(goodsImage: "image1", goodsName: "손오공이 잃어버린 머리띠 반쪽", goodsDescription: "손오공이 장난치다가 머리띠 반쪽 잘라서 어딘가 숨겨둔 역사속 물건!!", goodsPrice: "942,192,000원"),
        SaveModel(goodsImage: "image2", goodsName: "골드 반지", goodsDescription: "결혼을 준비하는 당신?! 약혼녀에게 이 반지를 선물하는 건 어때요?!", goodsPrice: "12,000원"),
        SaveModel(goodsImage: "image3", goodsName: "하얀 신발", goodsDescription: "짝퉁 나이키 신발! 정말 푹신푹신해서 걷다가 졸려서 넘어지지 않게 조심하세요", goodsPrice: "90,000원"),
        SaveModel(goodsImage: "image4", goodsName: "에베레스트 다이아 반지", goodsDescription: "에베레스트 올라가서 다이아 구하고 만든 반지,,! 과연 이것을 누가 사갈 것인가??", goodsPrice: "1,292,999,000원"),
        SaveModel(goodsImage: "image5", goodsName: "아디다스다 신발", goodsDescription: "아디다스 처럼 보이지만 아디다스가 아닐지도 모르는 신발 이 신발의 주인은 너야~~", goodsPrice: "120,000원"),
        SaveModel(goodsImage: "image6", goodsName: "황제 잠옷", goodsDescription: "어느 나라의 황제가 입었다는 잠옷 크리스마스 트리같이 보이는 디자인!", goodsPrice: "120,000,000원"),
        SaveModel(goodsImage: "image7", goodsName: "고장난 기타", goodsDescription: "블라블라블라블라 블라블라블라블라블라", goodsPrice: "120,000원"),
        SaveModel(goodsImage: "image8", goodsName: "하얀 음료", goodsDescription: "이 음료를 마시면 건강해져요 근데 어디가 건강해질까요? 한 번 마셔야겠어요", goodsPrice: "120,000원"),
    ]
}
