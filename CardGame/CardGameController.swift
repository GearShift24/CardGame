//
//  CardGameController.swift
//  CardGame
//
//  Created by Wrigley, Joseph on 10/27/16.
//  Copyright © 2016 Ctec. All rights reserved.
//

import UIKit
class CardGameController : UIViewController
{

//    @IBOutlet weak var cardLabel: UILabel!
//
//    @IBOutlet weak var cardButton: UIButton!
    
    
    @IBOutlet weak var cardOne: UIButton!
    
    
    @IBOutlet weak var cardTwo: UIButton!
    
    
    @IBOutlet weak var cardThree: UIButton!
    
    
    @IBOutlet weak var pointButton: UILabel!
    
    
    
    
    
    
        private lazy var myGame = StupidGame()
    
//        private lazy var score = Int()
    
    
      override func viewDidLoad()
    {
        myGame.startGame()
       
        
        cardOne.setTitle("\(myGame.hand[0].getCardData())", forState: UIControlState.Normal)
            cardTwo.setTitle("\(myGame.hand[1].getCardData())", forState: UIControlState.Normal)
                cardThree.setTitle("\(myGame.hand[2].getCardData())", forState: UIControlState.Normal)
         myGame.playMatchGame()
        pointButton.text = "Point : \(myGame.score)"
        
        
        
        
        
        
        
            myGame.hand.remove[0]
        
        
        
//    }
//    @IBAction func flipCard(sender: UIButton)
//    {
//        clickCount += 1
//        let words = "the random card has been clicked \(clickCount) times"
//        cardLabel.text = words
//        
//        if let currentCard = currentDeck.drawRandomCard() as? PlayingCard
//        {
//            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
////        }
//        else
//        {
//            cardLabel.text = "the deck was exhausted - reinnitilizing"
//            self.currentDeck = PlayingCardDeck()
//            
//        }
        
  
        
    }
}