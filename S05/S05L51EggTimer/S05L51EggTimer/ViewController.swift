//
//  ViewController.swift
//  S05L51EggTimer
//
//  Created by rjj on 2019.02.05.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var t = Timer()

    @IBOutlet weak var timerDisplay: UILabel!

    @IBAction func pauseBtn(_ sender: Any) {
        timerDisplay.text = "pauseBtn"
    }
    @IBAction func playBtn(_ sender: Any) {
        timerDisplay.text = "playBtn"
    }
    @IBAction func minus10Btn(_ sender: Any) {
        timerDisplay.text = "minus10Btn"
   }
    @IBAction func plus10Btn(_ sender: Any) {
        timerDisplay.text = "plus10Btn"
   }
    @IBAction func restBtn(_ sender: Any) {
        timerDisplay.text = "restBtn"
   }

    @objc func processTimer() {
        timerDisplay.text = "processed timer event"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        t = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }

}

