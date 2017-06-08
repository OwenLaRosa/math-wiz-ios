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
    
    func test_nameInitialText() {
        XCTAssertEqual(sut.gameTypeNameLabel.text, Constants.GameTypeNames.timeTrial)
    }
    
    func test_segmentValue0_nameTextChanged() {
        sut.gameTypeSegment.selectedSegmentIndex = 0
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertEqual(sut.gameTypeNameLabel.text, Constants.GameTypeNames.timeTrial)
    }
    
    func test_segmentValue1_nameTextChanged() {
        sut.gameTypeSegment.selectedSegmentIndex = 1
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertEqual(sut.gameTypeNameLabel.text, Constants.GameTypeNames.againstTheClock)
    }
    
    func test_descriptionInitialText() {
        XCTAssertEqual(sut.gameTypeDescriptionLabel.text, Constants.GameTypeDescriptions.timeTrial)
    }
    
    func test_segmentValue0_descriptionTextChanged() {
        sut.gameTypeSegment.selectedSegmentIndex = 0
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertEqual(sut.gameTypeDescriptionLabel.text, Constants.GameTypeDescriptions.timeTrial)
    }
    
    func test_segmentValue1_descriptionTextChanged() {
        sut.gameTypeSegment.selectedSegmentIndex = 1
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertEqual(sut.gameTypeDescriptionLabel.text, Constants.GameTypeDescriptions.againstTheClock)
    }
    
}
