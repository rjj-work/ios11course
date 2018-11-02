//
//  ViewController.swift
//  SecondApp
//
//  Created by rjj on 2018.11.01.
//  Copyright © 2018 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageField: UITextField!

    @IBOutlet weak var outputLabel: UILabel!

    @IBAction func clickMeSeymore(_ sender: Any) {
        print("Seymore clicked")

        if let age = ageField.text {
            outputLabel.text = "You are " + age + " years old."
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

