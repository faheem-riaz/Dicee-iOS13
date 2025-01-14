//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
  
    let diceOne = UIImage(imageLiteralResourceName: "DiceOne")
    let diceTwo = UIImage(imageLiteralResourceName: "DiceTwo")
    let diceThree = UIImage(imageLiteralResourceName: "DiceThree")
    let diceFour = UIImage(imageLiteralResourceName: "DiceFour")
    let diceFive = UIImage(imageLiteralResourceName: "DiceFive")
    let diceSix = UIImage(imageLiteralResourceName: "DiceSix")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = diceOne
        diceImageView2.image = diceOne
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
  
        let dices = [diceOne,diceTwo,diceThree,diceFour,diceFive,diceSix]
        diceImageView1.image = dices.randomElement()
        diceImageView2.image = dices.randomElement()
    }
    
}

