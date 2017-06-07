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
    
    var gameMode = 2
    var digits1: Digits = .one
    var digits2: Digits = .one
    
    var correctAnswers = 0
    var problemCount = 10
    var problems = [Problem]()
    var currentProblem: Problem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<problemCount {
            switch gameMode {
            case 0:
                problems.append(ProblemGenerator.shared.getAdditionProblem(digits1: digits1, digits2: digits2))
            case 1:
                problems.append(ProblemGenerator.shared.getSubtractionProblem(digits1: digits1, digits2: digits2))
            case 2:
                problems.append(ProblemGenerator.shared.getMultiplicationProblem(digits1: digits1, digits2: digits2))
            default:
                break
            }
        }
        
        currentProblem = problems.last
        problemLabel.text = currentProblem?.problem
    }
    
    /**
     Action is assigned to
        1. all numbered buttons 0 - 9
        2. The period button
        3. The x button
        4. The plus and minus buttons
     */
    @IBAction func inputButtonTapped(_ sender: UIButton) {
        if sender.tag >= 0 && sender.tag <= 9 {
            solutionLabel.text! += "\(sender.tag)"
        } else if sender.tag == 10 {
            solutionLabel.text! += "."
        } else if sender.tag == 11 {
            solutionLabel.text! += "x"
        } else if sender.tag == 12 {
            solutionLabel.text! += "-"
        } else if sender.tag == 13 {
            solutionLabel.text! += "+"
        }
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
        if currentProblem != nil {
            goToNextProblem()
        }
    }
    
    /**
     Checks the answer and switches to the next problem, if available
     */
    func goToNextProblem() {
        checkAnswer()
        problems.removeLast()
        problemLabel.text = ""
        solutionLabel.text = ""
        if problems.count > 0 {
            currentProblem = problems.last
            problemLabel.text = currentProblem?.problem
        }
    }
    
    /**
     Increments the correct answer count if the solution is correct
     */
    func checkAnswer() {
        guard let solution = Double(solutionLabel.text!) else {
            return
        }
        if solution == currentProblem?.solution.doubleValue {
            correctAnswers += 1
        }
    }
    
}
