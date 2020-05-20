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
    
    private var colorIs: Colors = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        startButton.setTitle("START", for: .normal)
        
        
        redColorView.layer.cornerRadius = 50
        redColorView.alpha = 0.3
        
        yellowColorView.layer.cornerRadius = 50
        yellowColorView.alpha = 0.3
        
        greenColorView.layer.cornerRadius = 50
        greenColorView.alpha = 0.3
        
    }


    @IBAction func changeColor(_ sender: UIButton) {
        
         startButton.setTitle("Next", for: .normal)
        
        if colorIs == .red {
            redColorView.alpha = 1
            greenColorView.alpha = 0.3
            colorIs = .yellow
        } else if colorIs == .yellow {
            yellowColorView.alpha = 1
            redColorView.alpha = 0.3
            colorIs = .green
        } else if  colorIs == .green {
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.3
            colorIs = .red
        } else {
            return
        }
        
        
    }
    
    
}

