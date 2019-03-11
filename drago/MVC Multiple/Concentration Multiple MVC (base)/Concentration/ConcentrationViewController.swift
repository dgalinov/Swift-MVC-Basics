//
//  ViewController.swift
//  Concentration
//  Copyright © 2019 CFGS La Salle Gracia. All rights reserved.
//

import UIKit

class ConcentrationViewController: UIViewController {

    var theme:Int?
    
    @IBOutlet private var cardButtons: [UIButton]!
    
   private var game:Concentration?
    
    @IBOutlet weak private var flipCountLabel: UILabel!
    
    private var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        if let themeChoosen = theme{
            game = Concentration(numberOfPairsOfCards: (cardButtons.count/2),themeChoosen:themeChoosen)
            
        }else{
            game = Concentration(numberOfPairsOfCards: (cardButtons.count/2))
        }
        
        
    }
    
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount+=1
        if let cardNumber = cardButtons.index(of: sender){
            game?.chooseCard(at: cardNumber)
            updateViewFromModel()
        }
    }
    
    private func updateViewFromModel(){
        for index in 0..<cardButtons.count{
            let button = cardButtons[index]
            if let card = game?.cards[index]{
                if card.isFadeUp || card.isMatched{
                    button.setTitle(card.emoji, for: UIControl.State.normal)
                    button.backgroundColor = UIColor.clear
                }else{
                    button.setTitle("", for: UIControl.State.normal)
                    button.backgroundColor = UIColor.gray
                }
            }
        }
    }
        
    @IBAction private func touchNewGame(_ sender: UIButton) {
        game = Concentration(numberOfPairsOfCards: (cardButtons.count/2))
        flipCount = 0
        updateViewFromModel()
    }
}

