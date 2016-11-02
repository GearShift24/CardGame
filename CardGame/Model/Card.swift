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
    private var backImage : UIImage
    
    
    
    private var isFaceUp : Bool
   
    
    
    
    init()
    {
        isFaceUp = false
        backImage = UIImage(named:"cardback")!
    }
    
    

    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func setBackImage(newImage : UIImage)
    {
        backImage = newImage
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

