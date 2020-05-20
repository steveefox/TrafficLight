//
//  ViewController.swift
//  TrafficLight
//
//  Created by Nikita on 5/20/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}
// не знаю, где правильней разместить enum

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private let trafficLightIsOff: CGFloat = 0.3
    private let trafficLightIsOn: CGFloat = 1
    private var colorIs: Colors = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        startButton.setTitle("START", for: .normal)
        
        
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        redColorView.alpha = trafficLightIsOff
        
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        yellowColorView.alpha = trafficLightIsOff
        
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        greenColorView.alpha = trafficLightIsOff
        
    }

    
    @IBAction func changeColor(_ sender: UIButton) {
        
        startButton.setTitle("Next", for: .normal)
        
        if colorIs == .red {
            redColorView.alpha = trafficLightIsOn
            greenColorView.alpha = trafficLightIsOff
            colorIs = .yellow
        } else if colorIs == .yellow {
            yellowColorView.alpha = trafficLightIsOn
            redColorView.alpha = trafficLightIsOff
            colorIs = .green
        } else if  colorIs == .green {
            greenColorView.alpha = trafficLightIsOn
            yellowColorView.alpha = trafficLightIsOff
            colorIs = .red
        }
        
        
    }
    
}
