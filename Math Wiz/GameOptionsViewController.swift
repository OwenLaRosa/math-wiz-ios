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
    
    @IBAction func startGameTapped(_ sender: UIButton) {
        
    }
    
}
