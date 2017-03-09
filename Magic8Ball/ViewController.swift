//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Rael Kenny on 1/17/17.
//  Copyright © 2017 Rael Kenny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fortuneLabel: UILabel!

    //1. create an array of fortunes
    let fortunes = ["Outcome unclear",
                    "Try again later",
                    "Decidedly so",
                    "Outlook is bleak",
                    "Absolutely",
                    "Yes"]
    
    //2. register for shake events (become first responder)
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    //3. implement motionEnded callback
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        //3.1 - get a random number
        let randomNumber = Int(arc4random_uniform(UInt32(fortunes.count)))
        
        //3.2 - get a fortune with that number
        let fortune = fortunes[randomNumber]
        
        //3.3 - set a label to that fortune
        fortuneLabel.text = fortune.uppercased()
        
    }
    
}

