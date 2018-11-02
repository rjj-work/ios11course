//
//  ViewController.swift
//  FirstApp
//
//  Created by Ralph J. Jackson on 2018.03.12.
//  Copyright © 2018 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickMeLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    @IBAction func ButtonPressed(_ sender: Any) {
        print("GHOST ViewController: ButtonPressed ")

//        if textField.text != nil {
//            clickMeLabel.text = "Hello " + textField.text!
//        }
        clickMeLabel.text = "Hello " + (textField.text ?? "nil value, moving on")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print("Why my name, unless I can get it from the OS?")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

