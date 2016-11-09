//
//  Deck.swift
//  CardGame
//
//  Created by Wrigley, Joseph on 10/31/16.
//  Copyright © 2016 Ctec. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()
    
    
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        
        while cards.count > 0
        {
            //chooses a valid raindex in the range of 0...cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            //takes the card from that spot, from the deck. the deck decreases in count.
            let removedCard = cards.removeAtIndex(randomSpot)
            //adds the removed card to the end of the new temporary deck.
            tempDeck.append(removedCard)
        }
        //Add the removed card th the temporary deck
        cards = tempDeck
    }
    
    
    
//    func drawCard() -> Card!
//    {
//        
//    }
//    
//    func drawRandomCard() -> Card!
//    {
//        
//    }
    
}