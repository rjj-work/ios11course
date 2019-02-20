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
    var tState = TimerState()

    @IBOutlet weak var timerDisplay: UILabel!

    @IBAction func pauseBtn(_ sender: Any) {
        tState.Pause()
        self.updateDisplay()
    }
    @IBAction func playBtn(_ sender: Any) {
        tState.Play()
        self.updateDisplay()
    }
    @IBAction func minus10Btn(_ sender: Any) {
        tState.Dec(d: Int(10))
        self.updateDisplay()
   }
    @IBAction func plus10Btn(_ sender: Any) {
        tState.Inc(i: Int(10))
        self.updateDisplay()
   }
    @IBAction func restBtn(_ sender: Any) {
        tState.Reset()
        self.updateDisplay()
   }

    @objc func processTimer() {
        tState.Dec(d:nil)
        self.updateDisplay()
    }

    func updateDisplay() {
        timerDisplay.text = "\(tState.Remaining())"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        t = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }

}

