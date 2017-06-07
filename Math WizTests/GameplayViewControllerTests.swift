//
//  GameplayViewControllerTests.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/6/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import XCTest
@testable import Math_Wiz

class GameplayViewControllerTests: XCTestCase {
    
    var sut: GameplayViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "GameplayViewController") as! GameplayViewController
        _ = sut.view
    }
    
    func test_inputButtons() {
        let testButton = UIButton()
        // this function reacts to 13 different buttons, 0 - 9, ., x, -, +
        for i in 0..<14 {
            testButton.tag = i
            sut.inputButtonTapped(testButton)
        }
        XCTAssertEqual(sut.solutionLabel.text, "0123456789.x-+")
    }
    
    func test_backButtonOneChar() {
        sut.solutionLabel.text = "x"
        sut.backButtonTapped(UIButton())
        XCTAssertEqual(sut.solutionLabel.text, "")
    }
    
    func testBackButtonMultipleChars() {
        sut.solutionLabel.text = "xx"
        sut.backButtonTapped(UIButton())
        XCTAssertEqual(sut.solutionLabel.text, "x")
    }
    
    func testBackButtonNoChars() {
        sut.solutionLabel.text = ""
        sut.backButtonTapped(UIButton())
        XCTAssertEqual(sut.solutionLabel.text, "")
    }
    
}
