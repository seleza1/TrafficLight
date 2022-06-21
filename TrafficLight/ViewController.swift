//
//  ViewController.swift
//  TrafficLight
//
//  Created by user on 6/21/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = redColor.frame.width / 2
        greenColor.layer.cornerRadius = redColor.frame.width / 2
    }

    @IBAction func startTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        if redColor.alpha == yellowColor.alpha {
            redColor.alpha = 1
            greenColor.alpha = 0.3
        } else if yellowColor.alpha == greenColor.alpha {
            redColor.alpha = 0.3
            yellowColor.alpha = 3
        } else if greenColor.alpha == redColor.alpha {
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
        }
        
        
    }
    
}

