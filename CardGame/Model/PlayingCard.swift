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
    private var rank : Int
        {
        get
            {
                return self.rank
            }
        
        set(rank)
            {
                self.rank = rank
            }
    }
}


