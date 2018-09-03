//
//  ViewController.swift
//  Timer
//
//  Created by Admin on 28/08/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var clock : Clock!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let timer = MyTimer(counter: 0)
        clock = Clock(timer: timer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



