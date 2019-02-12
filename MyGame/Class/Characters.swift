//
//  Characters.swift
//  MyGame
//
//  Created by samahir adi on 14/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation

class Characters {
    // The character can be a "commbattant", "colosse", "nain" or "mage".
    var typeOfCharacters: String
    
    // Every character has his own weapon whith an attack value.
    var weapon: Weapon
    
    // If the life points is at 0 or under, the character is dead.
    var lifePoints: Int
    
    init (typeOfCharacters: String, weapon: Weapon, lifePoints: Int) {
        self.typeOfCharacters = typeOfCharacters
        self.weapon = weapon
        self.lifePoints = lifePoints
    }
    
    ///Display all the characteristics of the team members
    var description: String {
        return "-- Arme: \(weapon.rawValue) -- Points de vie: \(lifePoints)  -- Force d'attaque: \(weapon.attackValue)"
    }
    
    ///Attack method, we take lifepoints to our enemy with our weapon.
    func attack(against: Characters) {
        if self.weapon.attackValue > 0 && self.lifePoints > 0 && against.lifePoints > 0 {
            against.lifePoints -= self.weapon.attackValue
            //life points can't be under 0
            if against.lifePoints <= 0 {
                against.lifePoints = 0
            print ("Votre ennemi est mort.")
            }else {
                print("""
                =================================================================================================
                🤺Vous avez bien combattu, il ne reste plus que \(against.lifePoints) points de vie à votre ennemi.
                =================================================================================================
                """)
            }
        }else{
            print("Vous êtes mort, vous ne pouvez plus combattre.")
        }
    }
}


