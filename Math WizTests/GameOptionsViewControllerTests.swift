//
//  GameOptionsViewControllerTests.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/8/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import XCTest
@testable import Math_Wiz

class GameOptionsViewControllerTests: XCTestCase {
    
    var sut: GameOptionsViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "GameOptionsViewController") as! GameOptionsViewController
        _ = sut.view
    }
    
    func test_viewCreated() {
        XCTAssertNotNil(sut.view)
    }
    
}
