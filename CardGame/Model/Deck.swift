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
        //creates a temporary array to hold card object
        var tempDeck = [Card]()
        
        //repeat until there are no cards in self.cards
        while self.cards.count > 0  //you dont need to use self. but it helps you remember it is intenral data member.
        {
            //chooses a valid raindex in the range of 0...cards.count-1
            let randomSpot = Int (arc4random() % UInt32(cards.count))
            
            //takes the card from that spot, from the deck. the deck decreases in count.
            let removedCard = self.cards.removeAtIndex(randomSpot)
            
            //adds the removed card to the end of the new temporary deck.
            tempDeck.append(removedCard)
        }
        // repleace the state deck with the temporary deck
        self.cards = tempDeck
    }
    
    
    
    func drawCard() -> Card?
    {
        if self.cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = (Int)(arc4random() % (UInt32) (cards.count))
            return cards.removeAtIndex(randomIndex)
        }
        else
        {
            return nil
        }
    }
    
}