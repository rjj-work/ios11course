//
//  TimerState.swift
//  S05L51EggTimer
//
//  Created by rjj on 2019.02.18.
//  Copyright © 2019 Sapient, Inc. All rights reserved.
//

import Foundation

let InitialTimerValue = Int(210)

class TimerState {
    var secondsRemaining = Int(InitialTimerValue)
    var paused = false

    func Remaining() -> Int {
        if secondsRemaining < 0 {
            secondsRemaining = 0
        }
        return secondsRemaining
    }

    func Dec(d: Int?) {
        if paused { return }
        if let dec = d {
            secondsRemaining -= dec
            return
        }
        secondsRemaining -= Int(1)
    }

    func Inc(i: Int?) {
        if paused { return }
        if let inc = i {
            secondsRemaining += inc
            return
        }
        secondsRemaining += 1
    }

    func Pause() {
        paused = true
    }

    func Play() {
        paused = false
    }

    func Reset() {
        secondsRemaining = InitialTimerValue
        paused = false
        return
    }
}
