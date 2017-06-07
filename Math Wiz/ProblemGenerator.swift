//
//  ProblemGenerator.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/6/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import Foundation

struct Problem {
    let problem: String
    let solution: NSNumber
}

enum Digits: Int {
    case one = 0, two, three, four
}

class ProblemGenerator {
    
    private final let digitsMap: [Digits: UInt32] = [
        .one: 9,
        .two: 99,
        .three: 9999,
        .four: 99999
    ]
    
    static var shared = ProblemGenerator()
    
    func getAdditionProblem(digits1: Digits, digits2: Digits) -> Problem {
        let number1 = Int(arc4random() % digitsMap[digits1]!) + 1
        let number2 = Int(arc4random() % digitsMap[digits2]!) + 1
        return Problem(problem: "\(number1) + \(number2)", solution: (number1 + number2) as NSNumber)
    }
    
    func getSubtractionProblem(digits1: Digits, digits2: Digits) -> Problem {
        let number1 = Int(arc4random() % digitsMap[digits1]!) + 1
        let number2 = Int(arc4random() % digitsMap[digits2]!) + 1
        // problems should always have positive answer or 0
        let higher = max(number1, number2)
        let lower = min(number1, number2)
        return Problem(problem: "\(higher) - \(lower)", solution: (higher - lower) as NSNumber)
    }
    
}
