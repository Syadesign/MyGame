//
//  Characters.swift
//  MyGame
//
//  Created by samahir adi on 14/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation

class Characters {
    var typeOfCharacters: String
    
    var weapon: String
    
    var lifePoints: Int
    
    var attackPoints: Int
    
    init (typeOfCharacters: String, weapon: String, lifePoints: Int, attackPoints: Int) {
        self.typeOfCharacters = typeOfCharacters
        self.weapon = weapon
        self.lifePoints = lifePoints
        self.attackPoints = attackPoints
    }
    
    func description () {
        print ("""
            Personnage:\(typeOfCharacters)
            Arme: \(weapon)
            Points de vie: \(lifePoints)
            Force d'attaque: \(attackPoints)
            """)
    }
    
    func attack () {
        
        if lifePoints > 0 {
        } else {
            print  ("Vous êtes mort, vous ne pouvez plus combattre")
        }
        
    }
    
}
    

