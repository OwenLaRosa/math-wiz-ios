//
//  MainViewControllerTests.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/5/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import XCTest
@testable import Math_Wiz

class MainViewControllerTests: XCTestCase {
    
    var sut: MainViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        _ = sut.view
    }
    
    // label with name of the app
    func test_hasTitle() {
        XCTAssertNotNil(sut.titleLabel)
    }
    
    func test_hasPickModeLabel() {
        XCTAssertNotNil(sut.pickModeLabel)
    }
    
    // vertical collection view with items for each game mode
    func test_hasModesCollection() {
        XCTAssertNotNil(sut.modesCollectionView)
    }
    
}
