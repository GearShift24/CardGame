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
    internal var rank : Int   //swift properties getters
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
    
    internal var suit: String
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
    
    internal var color : UIColor
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
    
    internal var frontImage : UIImage
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
        color = UIColor.redColor();
        rank = 0
        suit = String()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        frontImage = UIImage()
        color = UIColor.blueColor()
        
        rank = withRank
        suit = ofSuit

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
    
    let description = "This PlayingCard has a face value of \(rank), a color of \(color), the back image is \(self.getBackImage()) and is of the  \(suit) suit, also it \(facing)"
    
        
        
    return description
    }
//    java like methods that you could do.
    func getRank() -> Int
    {
        return self.rank
    }
    
    func setRank(rank : Int)
    {
        self.rank = rank
    }
    
    //the modifier 'class' in front of the func means that this method is visible without creating an instance of the class in question.
    //this is a class message, not an instance method.
    class func validRanks() -> [String]
    {
    return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️","♠️","♦️","♣️"]
    }
}