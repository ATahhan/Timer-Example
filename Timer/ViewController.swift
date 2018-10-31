//
//  ViewController.swift
//  Timer
//
//  Created by Admin on 28/08/2018.
//  Copyright © 2018 SalehAlDhobaie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterTextField: UITextField!
    
    var clock : Clock!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startCounterAction(_ sender: UIButton) {
        
        guard let text = counterTextField.text, let counter = Int(text), counter > 0 else {
            // Showing an Alert
            showAlert()
            return
        }
        self.counterLabel.text = "\(counter)"
        self.clock = Clock(counter: counter)
        self.clock.delegate = self
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Warning", message: "Text Field input should be a positive number", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}

extension ViewController: ClockUpdateDelegate {
    func current(counter: Int) {
        self.counterLabel.text = "\(counter)"
    }
    
    func finish() {
        self.counterLabel.text = "finish!"
    }
}

