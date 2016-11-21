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
    internal var discardDeck :[PlayingCard]
    internal var winnersDeck : [PlayingCard]


    
    
    //inits
    init()
    {
    self.score = 0
    self.drawingDeck = PlayingCardDeck()
    self.discardDeck = [PlayingCard]()
    self.winnersDeck = [PlayingCard]()
    self.hand = [PlayingCard]()
    self.currentCard = PlayingCard()
    }
    
    
    //methods
    func startGame() -> Void
    {
        drawingDeck.shuffleDeck()
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
        hand.append((drawingDeck.drawCard() as? PlayingCard)!)
    }
}