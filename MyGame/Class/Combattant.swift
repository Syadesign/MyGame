//
//  Combattant.swift
//  MyGame
//
//  Created by samahir adi on 17/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation

// This class inherits from the characters class
class Combattant : Characters {
    
    init (){
    super.init (typeOfCharacters: "Combattant", weapon: .sword, lifePoints: 100)
    }
}

