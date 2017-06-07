//
//  GameplayViewController.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/6/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import UIKit

class GameplayViewController: UIViewController {
    
    @IBOutlet weak var problemLabel: UILabel!
    @IBOutlet weak var solutionLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    /**
     Action is assigned to
        1. all numbered buttons 0 - 9
        2. The period button
        3. The x button
        4. The plus and minus buttons
     */
    @IBAction func inputButtonTapped(_ sender: UIButton) {
        
    }
    
    /**
     Action triggered when the back button is tapped
     Clears most recently typed character
     */
    @IBAction func backButtonTapped(_ sender: UIButton) {
        
    }
    
    /**
     Action triggered when the caret button is tapped
     Toggles whether or not numbers are typed in as exponents
     */
    @IBAction func caretButtonTapped(_ sender: UIButton) {
        
    }
    
    /**
     Finishes the problem, initiates grading, and moves to the next problem
     */
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
    }
    
}
