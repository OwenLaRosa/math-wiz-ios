//
//  Utils.swift
//  Math Wiz
//
//  Created by Owen LaRosa on 6/8/17.
//  Copyright © 2017 Owen LaRosa. All rights reserved.
//

import Foundation

class Utils {
    
    static var shared = Utils()
    
    func formatTime(seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        var secondsString = ""
        if seconds == 0 {
            secondsString = "00"
        } else if seconds < 10 {
            secondsString = "0\(seconds)"
        } else {
            secondsString = "\(seconds)"
        }
        return "\(minutes):\(secondsString)"
    }
    
}
