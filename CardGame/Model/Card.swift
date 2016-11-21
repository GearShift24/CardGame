//
//  Card.swift
//  CardGame
//
//  Created by Wrigley, Joseph on 10/25/16.
//  Copyright © 2016 Ctec. All rights reserved.
//

import UIKit

class Card
{
    
    //these are properties included with getters/setters
    
    
    
    private var isFaceUp : Bool
   
    
    
    
    init()
    {
        isFaceUp = false
    }
    
    

    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    
    //this is the exact same as a property
    func isUp() -> Bool
    {
        return isFaceUp
    }
    func setIsFacing(isFaceUp : Bool) -> Void
    {
        self.isFaceUp = isFaceUp
    }
}

