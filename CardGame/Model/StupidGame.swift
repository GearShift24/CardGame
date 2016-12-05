//
//  StupidGame.swift
//  CardGame
//
//  Created by Wrigley, Joseph on 11/11/16.
//  Copyright © 2016 Ctec. All rights reserved.
//
import UIKit
import Foundation

class StupidGame
{
    //Declaration section
    internal var hand : [PlayingCard]
    internal var drawingDeck : PlayingCardDeck
    internal var currentCard : PlayingCard
    internal var score : Int


    
    
    //inits
    init()
    {
    self.score = 0 //connect score to a label later
    self.drawingDeck = PlayingCardDeck()
    self.hand = [PlayingCard]()
    self.currentCard = (drawingDeck.drawCard() as? PlayingCard)!
    }
    
    
    //methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
        drawCards()
       

    }
    
    
    
    private func drawCards() -> Void    //draws hand to 3 cards after stuff
    {
    
        if(hand.count <= 2)
        {
            
    hand.append((drawingDeck.drawCard() as? PlayingCard)!)

        }
        
        if(hand.count <= 2)
        {
            
            hand.append((drawingDeck.drawCard() as? PlayingCard)!)
            
        }
        if(hand.count <= 2)
        {
            
            hand.append((drawingDeck.drawCard() as? PlayingCard)!)
            
        }
        
    }
    
    
    
    func checkMatch() -> Bool
    {
        let hasMatch :Bool
        if( hand[0].rank == hand[1].rank) || (hand[0].suit == hand[1].suit)
        {
            hasMatch = true
            
        }
        else
        {
            hasMatch = false
        }
        
        return hasMatch
    }
    
    
    func playMatchGame() -> Void
    {
        if drawingDeck.cards.count > 0
        {
        
            if checkMatch()
            {
                score += 2
                
            }
            else
            {
                score -= 0
            }
                drawCards()
            }

      

    }
    

    
    
}