//
//  PlayingCard.swift
//  CardGame
//
//  Created by Wrigley, Joseph on 10/25/16.
//  Copyright © 2016 Ctec. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int   //swift properties getters
        {
        get                   // slash setters
        {
            return self.rank
        }
        
        set(rank)
        {
            self.rank = rank
        }
        }
    
    private var suit: String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
    }
    
    
//    java like methods that you could do.
//    func getRank() -> Int
//    {
//        return self.rank
//    }
//    
//    func setRank(rank : Int)
//    {
//        self.rank = rank
//    }
    
    
    
}




