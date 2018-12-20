//
//  ViewController.swift
//  CatYears
//
//  Created by rjj on 2018.12.19.
//  Copyright © 2018 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInput: UITextField!

    @IBOutlet weak var ageOutput: UITextField!

    @IBAction func getAgeInCatYears(_ sender: UIButton) {
        // extract data from input
        if let ageStr = ageInput.text {

            // check if the data is numeric
            let age = Float(ageStr)
            if age == nil {
                print("value '" + ageStr + "' not a number")
                return
            }
            print("numeric string value: '" + ageStr + "'")

            // multiple by human to cat years factor
            let catAge = age! * Factors.HumanYearsToCatYears

            let catAgeStr = String(format: "%0.0f", catAge)
            print("catAgeStr" + catAgeStr)

            // update output
            //print(String(format: "humageAge: %s, factor: %d, catAge: %d, catAgeStr: %s", ageStr, Factors.HumanYearsToCatYears, catAge, catAgeStr))

            ageOutput.text = catAgeStr
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

