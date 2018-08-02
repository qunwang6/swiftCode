//
//  ViewController.swift
//  showAlert
//
//  Created by MacOSBeta on 2018/8/1.
//  Copyright © 2018 MacOSBeta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    //var currentValue: Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: Any) {
        let difference = abs(targetValue - currentValue)
        let points = 100 - difference
        let message = "The score is: \(points)"
        score += points
        let alert = UIAlertController(title: "hello,world", message: message, preferredStyle: .alert )
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        startNewRound()
        updateLabels()
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound(){
        round = round + 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    func updateLabels(){
        
        targetLabel.text = String(targetValue)
        roundLabel.text = String(round)
        scoreLabel.text = String(score)
        
    }
}

