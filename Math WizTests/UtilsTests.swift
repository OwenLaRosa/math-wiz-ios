//
//  UtilsTests.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/8/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import XCTest
@testable import Math_Wiz

class UtilsTests: XCTestCase {
    
    var sut: Utils!
    
    override func setUp() {
        sut = Utils()
    }
    
    func test_formatTime_Zero() {
        XCTAssertEqual(sut.formatTime(seconds: 0), "0:00")
    }
    
    func test_formatTime_BelowTen() {
        XCTAssertEqual(sut.formatTime(seconds: 5), "0:05")
    }
    
    func test_formatTime_UnderMinute() {
        XCTAssertEqual(sut.formatTime(seconds: 30), "0:30")
    }
    
    func test_formatTime_Minute() {
        XCTAssertEqual(sut.formatTime(seconds: 60), "1:00")
    }
    
    func test_formatTime_OverMinute() {
        XCTAssertEqual(sut.formatTime(seconds: 90), "1:30")
    }
    
}
