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
    
    internal var suit: String
    
    internal var color : UIColor
    
    
    override init()
    {
    
        self.color = UIColor.red;
        self.rank = 0
        self.suit = String()
        super.init() //calls playingCard object, when inheriting, use this to init your self properties
    }
    
    init(withRank: Int, ofSuit: String)
    {
        color = UIColor.blue
        rank = withRank
        suit = ofSuit
        
        super.init()
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
    
    let description = "This PlayingCard has a face value of \(rank), a color of \(color), the back image is  and is of the  \(suit) suit, also it \(facing)"
    
        
        
    return description
    }
//    java like methods that you could do.
    func getRank() -> Int
    {
        return self.rank
    }
    
    func setRank(_ rank : Int)
    {
        self.rank = rank
    }
    
    func getCardData() -> String
    {
        let data = "\(PlayingCard.validRanks()[rank]) \(suit)"
        return data
    }
    
    //the modifier 'class' in front of the func means that this method is visible without creating an instance of the class in question.
    //this is a class message, not an instance method.
    class func validRanks() -> [String]
    {
    return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♥️","♠️","♦️","♣️"]
    }
}







