//
//  ViewController.swift
//  trafficLight
//
//  Created by Roman on 23.09.23.
//

import UIKit

final class ViewController: UIViewController {
    
    enum TrafficLight {
        case red
        case yellow
        case green
    }
    
    var currentState: TrafficLight = .red
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var mainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius  = 79
        greenLight.layer.cornerRadius = 79
        yellowLight.layer.cornerRadius = 79
        
        mainButton.layer.cornerRadius = 25
    }

    @IBAction func buttonWasPressed() {
        switch currentState {
            
        case .red:
            mainButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentState = .yellow
            
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            currentState = .green
            
        case .green:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentState = .red
            
        }
    }
    
    
    

}

