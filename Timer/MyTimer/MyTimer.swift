//
//  MyTimer.swift
//  Timer
//
//  Created by Admin on 03/09/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import Foundation

protocol MyTimerDelegate : class {
    
    func start(timer: MyTimer)
    func current(timer: MyTimer, counter: Int)
    
    // TODO: ask student to add these function to be implemnted 'stop & finsh function
    
}

class MyTimer {
    
    
    // ToDo: create a delegate object of type : MyTimerDelegate.
    weak var delegate : MyTimerDelegate?
    
    var counter : Int = 0
    var timer : Timer?
    
    init(counter: Int) {
        self.counter = counter
    }
    
    
    /*
     * This function will trigger the timer in case the timer is not null (timer is option) or in will construct timer object to start counting.
     *
     */
    func startTimer() {
        if let timer = self.timer {
            timer.fire()
        }else {
            timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true, block: { timer in
                
                if self.counter == 30 {
                    // ToDo: use delegate to call stop & finish function
                    timer.invalidate()
                }else {
                    self.counter = self.counter + 1
                    self.delegate?.current(timer: self, counter: self.counter)
                }
            })
        }
    }
    
    /*
     * This function will stop timer in case it's not null. (Timer is optional), if not stop func will print in console ("Timer is not init yet  😅!")
     *
     *
     */
    func stopTimer() {
        if let timer = self.timer {
            timer.invalidate()
        }else {
            print("Timer is not init yet  😅!")
        }
    }
}

