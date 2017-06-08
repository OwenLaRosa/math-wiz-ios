//
//  GameOptionsViewController.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/8/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import UIKit

class GameOptionsViewController: UIViewController {
    
    @IBOutlet weak var gameModeLabel: UILabel!
    @IBOutlet weak var gameTypeSegment: UISegmentedControl!
    @IBOutlet weak var gameTypeNameLabel: UILabel!
    @IBOutlet weak var gameTypeDescriptionLabel: UILabel!
    @IBOutlet weak var minutesOrProblemsLabel: UILabel!
    @IBOutlet weak var minutesOrProblemsStepper: UIStepper!
    @IBOutlet weak var maxDigitsLabel: UILabel!
    @IBOutlet weak var maxDigitsStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameTypeSegment.selectedSegmentIndex = 0
        gameTypeSegment.sendActions(for: .valueChanged)
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        if gameTypeSegment.selectedSegmentIndex == 0 {
            gameTypeNameLabel.text = Constants.GameTypeNames.timeTrial
            gameTypeDescriptionLabel.text = Constants.GameTypeDescriptions.timeTrial
        } else if gameTypeSegment.selectedSegmentIndex == 1 {
            gameTypeNameLabel.text = Constants.GameTypeNames.againstTheClock
            gameTypeDescriptionLabel.text = Constants.GameTypeDescriptions.againstTheClock
        }
    }
    
    @IBAction func startGameTapped(_ sender: UIButton) {
        
    }
    
}
