//
//  Clock.swift
//  Timer
//
//  Created by Admin on 03/09/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import Foundation

/*
 * TODO : Here in this file please create a Clock class contains 1 object called timer from MyTimer class. In `init` initialize your timer and adopt MyTimer Delegate. Don't forget to implement delegate funcs. Happy Coding!
 *
 */

protocol ClockUpdateDelegate : class {
    func current(counter: Int)
    func finish()
}
