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
    
}
