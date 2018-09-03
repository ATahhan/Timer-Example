//
//  Clock.swift
//  Timer
//
//  Created by Admin on 03/09/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import Foundation

/*
 * Here in this file plaeas create a class contatins 1 object called timer from MyTimer class. in `init` inisiate your timer and adopt MyTimer Delegate. don't forget to implement delegate func. Happy Coding! 
 *
 */

class Clock : MyTimerDelegate {
    
    var myTimer: MyTimer!
    init(timer: MyTimer) {
        myTimer = timer
        myTimer.delegate = self
        myTimer.startTimer()
    }
    
    func start(timer: MyTimer) {
        print("Start")
    }
    
    func stop(timer: MyTimer) {
        print("Stop")
    }
    
    
    func current(timer: MyTimer, counter: Int) {
        print(counter)
    }
    
    func fnish(timer: MyTimer) {
        print("fnish")
    }
    
}
