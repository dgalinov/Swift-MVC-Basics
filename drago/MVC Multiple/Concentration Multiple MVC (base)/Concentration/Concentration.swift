//
//  Concentration.swift
//  Concentration
//  Copyright © 2019 CFGS La Salle Gracia. All rights reserved.
//

import Foundation

class Concentration{
    private var emojiChoices:[Int:[String]] = [
        0:["😈","😱","👻","👽","🎃","🙀","👾","👹","🤡","🤖","☠️"],
        1:["😀", "😅","😂","🥰","😜","😉","😎","🤓"],
        2:["🐶", "🐱","🐭","🐷","🐨","🐔","🐸","🐝","🐌","🦁"]
    ]
    private(set) var cards = [Card]()
    private var indexOfOneAndOnlyFaceUpCard:Int?
    
    init(numberOfPairsOfCards:Int){
        //select random theme
        let randomIndexTheme =  Int.random(in: 0..<emojiChoices.count)
        if var emojiTheme = emojiChoices[randomIndexTheme]{
            for _ in 0..<numberOfPairsOfCards{
                //select random emoji from emojiChoices
                 let randomIndex =  Int.random(in: 0..<emojiTheme.count)
                //asign emoji to Card
                let card = Card(emoji: emojiTheme[randomIndex])
                //delete from emojiChoices to avoid future occurrences
                emojiTheme.remove(at: randomIndex)
                //add pair of cards
                cards.append(card)
                cards.append(card)
            }
            
        }
        
        //TODO: Shuffle the cards
        cards.shuffle()
    }
    
    init(numberOfPairsOfCards:Int, themeChoosen:Int){
        
        if var emojiTheme = emojiChoices[themeChoosen]{
            for _ in 0..<numberOfPairsOfCards{
                //select random emoji from emojiChoices
                let randomIndex =  Int.random(in: 0..<emojiTheme.count)
                //asign emoji to Card
                let card = Card(emoji: emojiTheme[randomIndex])
                //delete from emojiChoices to avoid future occurrences
                emojiTheme.remove(at: randomIndex)
                //add pair of cards
                cards.append(card)
                cards.append(card)
            }
            
        }
        
        //TODO: Shuffle the cards
        cards.shuffle()
    }
    
    
    func chooseCard(at index:Int){
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index{
                //check if cards match
                if cards[matchIndex].emoji == cards[index].emoji{
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFadeUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            }else{
                //either no cards or 2 cards are face up -> flip down
                for flipDownIndex in cards.indices{
                    cards[flipDownIndex].isFadeUp = false
                }
                cards[index].isFadeUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
    }
}
