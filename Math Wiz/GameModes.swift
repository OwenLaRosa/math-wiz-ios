//
//  GameModes.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/5/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import Foundation

struct GameMode {
    let id: Int
    let name: String
    let image: String
}

let kGameModes = [
    GameMode(id: 0, name: "Addition", image: "addition"),
    GameMode(id: 1, name: "Subtraction", image: "subtraction"),
    GameMode(id: 2, name: "Multiplication", image: "multiplication"),
    GameMode(id: 3, name: "Division", image: "division")
]
