//
//  ViewController.swift
//  S04L49_button_bar
//
//  Created by rjj on 2019.01.31.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()

    @IBAction func bbCamera(_ sender: Any) {
        print("bbCamera pressed - invalidating \(timer)")
        timer.invalidate()
    }

    @objc func processTimer() {
        print("Timer fired: once per second")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

}

