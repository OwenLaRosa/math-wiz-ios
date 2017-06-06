//
//  ModesCollectionViewTests.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/5/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import XCTest
@testable import Math_Wiz

class ModesCollectionViewTests: XCTestCase {
    
    var sut: MainViewController!
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let _ = sut.view
    }
    
    func test_dataSourceAssigned() {
        XCTAssertTrue(sut.modesCollectionView.dataSource is ModesCollectionViewDataSource)
    }
    
    func test_numberOfItemsInSection0() {
        let targetItems = kGameModes.count
        let actualItems = sut.modesCollectionView.numberOfItems(inSection: 0)
        XCTAssertEqual(targetItems, actualItems)
    }
    
    func test_allCellsConfigured() {
        let numItems = sut.modesCollectionView.numberOfItems(inSection: 0)
        // test should fail if no items in collection view
        XCTAssertNotEqual(numItems, 0)
        for i in 0..<numItems {
            let indexPath = IndexPath(item: i, section: 0)
            let cell = sut.modesCollectionView.dataSource?.collectionView(sut.modesCollectionView, cellForItemAt: indexPath) as? ModesCollectionViewCell
            
            // did the cell load successfully?
            XCTAssertNotNil(cell)
            
            // are the views assigned via outlets?
            XCTAssertNotNil(cell?.modeNameLabel)
            XCTAssertNotNil(cell?.modeLogoImageView)
            
            // is the label text correct?
            XCTAssertEqual(cell?.modeNameLabel.text, kGameModes[i].name)
            
            // is there an image?
            XCTAssertNotNil(cell?.modeLogoImageView.image)
        }
    }
    
}
