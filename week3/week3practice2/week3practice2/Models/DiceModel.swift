//
//  DiceModel.swift
//  week3practice2
//
//  Created by 김미주 on 10/10/2024.
//

import Foundation

struct DiceModel {
    let diceImage: String
    let diceName: String
}

// 더미 데이터
final class dummyDiceModel {
    static let diceDatas: [DiceModel] = [
        DiceModel(diceImage: "dice_1", diceName: "주사위 1"),
        DiceModel(diceImage: "dice_2", diceName: "주사위 2"),
        DiceModel(diceImage: "dice_3", diceName: "주사위 3"),
        DiceModel(diceImage: "dice_4", diceName: "주사위 4"),
        DiceModel(diceImage: "dice_5", diceName: "주사위 5"),
        DiceModel(diceImage: "dice_6", diceName: "주사위 6"),
    ]
}
