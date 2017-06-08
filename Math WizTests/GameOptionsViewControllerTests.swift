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
    
    func test_segmentValue0_hasProblemsLabel() {
        sut.gameTypeSegment.selectedSegmentIndex = 0
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertTrue(sut.minutesOrProblemsLabel.text!.hasPrefix(Constants.GameOptionsPrefixes.problems))
    }
    
    func test_segmentValue1_hasMinutesLabel() {
        sut.gameTypeSegment.selectedSegmentIndex = 1
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertTrue(sut.minutesOrProblemsLabel.text!.hasPrefix(Constants.GameOptionsPrefixes.minutes))
    }
    
    func test_segmentValue0_stepperValues() {
        sut.gameTypeSegment.selectedSegmentIndex = 0
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertEqual(sut.minutesOrProblemsStepper.minimumValue, 10)
        XCTAssertEqual(sut.minutesOrProblemsStepper.maximumValue, 100)
        XCTAssertEqual(sut.minutesOrProblemsStepper.stepValue, 5)
        XCTAssertEqual(sut.minutesOrProblemsStepper.value, 10)
    }
    
    func test_segmentValue1_stepperValues() {
        sut.gameTypeSegment.selectedSegmentIndex = 1
        sut.gameTypeSegment.sendActions(for: .valueChanged)
        XCTAssertEqual(sut.minutesOrProblemsStepper.minimumValue, 1)
        XCTAssertEqual(sut.minutesOrProblemsStepper.maximumValue, 10)
        XCTAssertEqual(sut.minutesOrProblemsStepper.stepValue, 1)
        XCTAssertEqual(sut.minutesOrProblemsStepper.value, 1)
    }
    
}
