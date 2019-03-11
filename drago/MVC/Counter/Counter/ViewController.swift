//
//  ViewController.swift
//  Counter
//
//  Created by Dragomir on 18/02/2019.
//  Copyright © 2019 La Salle Gracia CFGS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let counter = Counter()

    @IBOutlet private weak var display: UILabel!
    
    @IBOutlet weak var buttonReset: UIButton!
    
    @IBOutlet weak var historyConsole: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        buttonReset.isEnabled = false
    }
    
    @IBAction private func action(_ sender: UIButton) {
        switch sender.tag{
            // Button "+"
        case 0:
            counter.increment()
            historyConsole.text += "Button + pressed \n"
            // Button "-"
        case 1:
            counter.decrement()
            historyConsole.text += "Button - pressed \n"
            // Button "Reset"
        case 3:
            counter.value = 0
            historyConsole.text = "Reset button pressed \n \n"
        default:
            print("No value")
        }
        buttonReset.isEnabled = true
        if counter.value >= 0 {
            display.text = "\(counter.value)"
            display.textColor = UIColor.white
        } else if counter.value < 0 {
            display.text = "\(counter.value)"
            display.textColor = UIColor.red
        } else {
            display.text = "Value not valid"
        }
        
    }
}


