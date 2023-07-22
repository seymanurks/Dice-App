//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceText: UITextField!
    
    var previousDiceValue = 0
    
    override func viewDidLoad() {
           super.viewDidLoad()

    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        
        let randomValue1 = Int.random(in: 0...5)
        diceImageView1.image = diceArray[randomValue1]
        let randomValue2 = Int.random(in: 0...5)
        diceImageView2.image = diceArray[randomValue2]
        
        let diceValue = ((randomValue1 + 1) + (randomValue2 + 1))
        
        diceText.text = "\(previousDiceValue)"

        previousDiceValue = diceValue
    }
    
}

