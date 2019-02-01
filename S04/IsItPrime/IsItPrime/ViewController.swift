//
//  ViewController.swift
//  IsItPrime
//
//  Created by rjj on 2019.01.26.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

func isPrime(n: Int) -> Bool {
    if n == 1 || n == 2 || n == 3 {
        return true
    }
    if n < 1 || n % 2 == 0 {
        return false
    }

    let s = Int(sqrt(Double(n)))

    var i = 3
    while i <= s {
        if n % i == 0 {
            return false
        }
        i = i+2
    }

    return true
}

class ViewController: UIViewController {

    @IBOutlet weak var testInput: UITextField!
    @IBOutlet weak var isPrimeText: UILabel!

    @IBAction func testForPrimeButton(_ sender: Any) {
        let tInput = testInput.text
        if tInput == nil {
            return
        }

        // Did we get an int value ?
        if let tN = Int(tInput!) {
            if tN <= 1 {
                isPrimeText.text = "Please enter a positive integer > 2"
                testInput.text = ""
                return
            }
            if isPrime(n: tN) {
                isPrimeText.text = String(format:"Hell yeah %d prime!", tN)
            } else {
                isPrimeText.text = String(format: "Sorry, but %d is not prime.", tN)
            }
        } else {
            isPrimeText.text = "Please enter a positive integer > 2"
            testInput.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

