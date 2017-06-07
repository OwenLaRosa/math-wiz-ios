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
    
    var solutionText = ""
    
    /**
     Action is assigned to
        1. all numbered buttons 0 - 9
        2. The period button
        3. The x button
        4. The plus and minus buttons
     */
    @IBAction func inputButtonTapped(_ sender: UIButton) {
        if sender.tag >= 0 && sender.tag <= 9 {
            solutionText += "\(sender.tag)"
        } else if sender.tag == 10 {
            solutionText += "."
        } else if sender.tag == 11 {
            solutionText += "x"
        } else if sender.tag == 12 {
            solutionText += "-"
        } else if sender.tag == 13 {
            solutionText += "+"
        }
        solutionLabel.text = solutionText
    }
    
    /**
     Action triggered when the back button is tapped
     Clears most recently typed character
     */
    @IBAction func backButtonTapped(_ sender: UIButton) {
        if solutionLabel.text!.characters.count > 0 {
            solutionLabel.text = solutionLabel.text!.substring(to: solutionLabel.text!.index(before: solutionLabel.text!.endIndex))
        }
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
