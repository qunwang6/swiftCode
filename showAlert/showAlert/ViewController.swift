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
        startNewGame()
        updateLabels()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: Any) {
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        let title:String
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it."
            if difference == 1 {
               points += 50
            }
            
        } else if difference < 10 {
            title = "pretty good."
        } else {
            title = "not even close..."
        }
        score += points
        
        let message = "The score is: \(points)"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert )
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.startNewRound()
            self.updateLabels()
        })
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        //startNewRound()
        //updateLabels()
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }

    @IBAction func startOver(_ sender: Any) {
        startNewGame()
        updateLabels()
        
    }
    func startNewGame(){
        score = 0
        round = 0
        startNewRound()
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

