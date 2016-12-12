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
    fileprivate lazy var myGame = StupidGame()
    
    
    
    @IBOutlet weak var cardOne: UIButton!
    
    
    @IBOutlet weak var cardTwo: UIButton!
    
    
    @IBOutlet weak var cardThree: UIButton!
    
    
    @IBOutlet weak var pointButton: UILabel!
    
    
    
    @IBAction func deleteCardOne(_ sender: UIButton)
    {
                     if myGame.hand.count >= 0
                     {
                        myGame.hand.remove(at: 0)
                        }
        
      //  cardOne.setTitle("",for:UIControlState())  //maybe set this up so that it doesnt instantly remove the card, but a bit later
   
    }

    
    @IBAction func deleteCardTwo(_ sender: UIButton)  //make these work codyyyyyeerrr henrichsen!
    {
        
        
        if myGame.hand.count >= 0
        {
            myGame.hand.remove(at: 1)
        }    }
    
    
    @IBAction func deleteCardThree(_ sender: UIButton)
    {
        if myGame.hand.count >= 0
        {
            myGame.hand.remove(at: 2)
        }
    }
    
    
    
    
//        private lazy var score = Int()
    
    
      override func viewDidLoad()
    {
        myGame.startGame()
       
        
        cardOne.setTitle("\(myGame.hand[0].getCardData())", for: UIControlState())
            cardTwo.setTitle("\(myGame.hand[1].getCardData())", for: UIControlState())
                cardThree.setTitle("\(myGame.hand[2].getCardData())", for: UIControlState())
         myGame.playMatchGame()
        pointButton.text = "Point : \(myGame.score)"
        
        
        
        
        
        
        

        
        
        
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
