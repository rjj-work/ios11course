//
//  ViewController.swift
//  GuessingGame
//
//  Created by rjj on 2019.01.07.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

let maxUpperLimit = UInt32(100)
let minUpperLimit = UInt32(5)

var theValue = UInt32(arc4random_uniform(maxUpperLimit))

class ViewController: UIViewController {

    @IBOutlet weak var aGuess: UITextField!
    @IBOutlet weak var guessStatus: UILabel!

    var numGuesses = Int(0)

    @IBAction func buttonGuess(_ sender: UIButton) {
        // check for a guess
        let g = aGuess.text
        if g == nil {
            // No value, so nothing to do
            return
        }
        let gVal = UInt32(g!)
        if gVal == nil {
            print("\(String(describing: g)) did not covert to UInit32")
            return
        }
        updateStatus(n: numGuesses, thisGuess: gVal!, checkValue: theValue)
        numGuesses = numGuesses + 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        setTheValue()
        updateStatus(n: numGuesses, thisGuess: 0, checkValue: 0)
    }

    func updateStatus(n: Int, thisGuess: UInt32, checkValue: UInt32) {
        var statusText = String()

        if n == 0 {
            guessStatus.text = "No guess made yet"
            return
        }

        if thisGuess == theValue {
            statusText = String(format: "Guess #%d is a WINNER!", n)
        }

        if thisGuess < theValue {
            statusText = String(format: "Guess #%d is LOW \(thisGuess) < \(theValue)", n)
        }
        if thisGuess > theValue {
            statusText = String(format: "Guess #%d is HIGH \(thisGuess) > \(theValue)", n)
        }

        guessStatus.text = statusText
    }

    func setTheValue() {
        while (theValue < minUpperLimit) {
            theValue = UInt32(arc4random_uniform(maxUpperLimit))
            print("thevalue: \(theValue)")
        }
    }
}

