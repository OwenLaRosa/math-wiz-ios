//
//  ProblemGeneratorTests.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/7/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import XCTest
@testable import Math_Wiz

class ProblemGeneratorTests: XCTestCase {
    
    var sut: ProblemGenerator!
    
    override func setUp() {
        sut = ProblemGenerator()
    }
    
    func test_additionContainsPlus() {
        let problem = sut.getAdditionProblem(digits1: .one, digits2: .one)
        XCTAssertTrue(problem.problem.contains("+"))
    }
    
    func test_subtractionContainsMinus() {
        let problem = sut.getSubtractionProblem(digits1: .one, digits2: .one)
        XCTAssertTrue(problem.problem.contains("-"))
    }
    
}
