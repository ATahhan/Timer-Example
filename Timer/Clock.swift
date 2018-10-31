//
//  Clock.swift
//  Timer
//
//  Created by Admin on 03/09/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import Foundation

protocol ClockUpdateDelegate : class {
    func current(counter: Int)
    func finish()
}



class Clock : MyTimerDelegate {
    
    var myTimer : MyTimer?
    weak var delegate : ClockUpdateDelegate?
    
    init(counter: Int) {
        myTimer = MyTimer(counter: counter)
        myTimer?.delegate = self
        myTimer?.startTimer()
    }
    
    func current(timer: MyTimer, counter: Int) {
        print("current timer \(counter)")
        self.delegate?.current(counter: counter)
    }
    
    func start(timer: MyTimer, counter: Int) {
        print("start timer \(counter)")
    }
    
    func stop(timer: MyTimer, counter: Int) {
        print("stop timer \(counter)")
    }
    
    func finish(timer: MyTimer) {
        print("finish timer")
        self.delegate?.finish()
    }
    
}
