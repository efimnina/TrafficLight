//
//  ViewController.swift
//  TrafficLight
//
//  Created by Нина Ефимова on 21.05.2020.
//  Copyright © 2020 Efim Nina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let widthcircle = CGFloat(128 / 2)
        redColorView.layer.cornerRadius = widthcircle
        yellowColorView.layer.cornerRadius = widthcircle
        greenColorView.layer.cornerRadius = widthcircle
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed() {
        if startButton.titleLabel?.text == "Start" {
            startButton.setTitle("Next", for: .normal)
            redColorView.alpha = 1
        } else {
            if redColorView.alpha == 1 {
                redColorView.alpha = 0.3
                yellowColorView.alpha = 1
            } else if yellowColorView.alpha == 1 {
                yellowColorView.alpha = 0.3
                greenColorView.alpha = 1
            } else if greenColorView.alpha == 1 {
                greenColorView.alpha = 0.3
                redColorView.alpha = 1
            }
        }
    }
}
