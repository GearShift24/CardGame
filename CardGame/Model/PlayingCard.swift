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
    
    private var color : UIColor
        {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    private var frontImage : UIImage
        {
        get
        {
            return self.frontImage
        }
        set(frontImage)
        {
            self.frontImage = frontImage
        }
    }
    
    
    override init()
    {
        super.init() //calls playingCard object, when inheriting, use this to init your self properties
        frontImage = UIImage()
        color = UIColor()
        rank = 0
        suit = String()
    }
    
    
    override func toString() -> String
    {
        let facing : String
        
        if self.isUp()
        {
            facing = "is face up."
        }
        else
        {
            facing = "is face down."
        }
    
    let description = "This PlayingCard has a face value of \(rank), a color of \(color), the back image is \(self.getBackImage()) and is of the  \(suit) suit, also it \(facing) "
    
        
        
    return description
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




