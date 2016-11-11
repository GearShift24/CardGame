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
    
    internal var score : Int
    internal var discardPile : UIImage
    internal var winnersPile: UIImage
    internal var drawingDeck : UIImage
    internal var hand : UIImage
    
    
    //inits
    init()
    {
    self.score = 0
    self.discardPile = UIImage()
    self.winnersPile = UIImage()
    self.drawingDeck = UIImage()
    self.hand = UIImage()
        
    }
    
    
    //methods
    func startGame() -> Void
    {
        
    }
}