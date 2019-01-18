//
//  Characters.swift
//  MyGame
//
//  Created by samahir adi on 14/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation

/// we enumerate all the weapons the characters can use
enum Weapon: String {
    case sword
    case potion
    case ax
    case hammer
    case magicSpear
    case magicWhip
    
    var attackValue :Int {
        switch self {
        case .sword: return 10
        case .potion: return 10
        case .ax: return 12
        case .hammer: return 15
        case .magicSpear: return 20
        case .magicWhip: return 25
        }
    }
}

class Characters {
    var typeOfCharacters: String
    
    var weapon: Weapon
    
    var lifePoints: Int
    
    init (typeOfCharacters: String, weapon: Weapon, lifePoints: Int) {
        self.typeOfCharacters = typeOfCharacters
        self.weapon = weapon
        self.lifePoints = lifePoints
       
    }
    
    ///Display all the characteristics of the team members
    func description() {
        print("-- Arme: \(weapon.rawValue) -- Points de vie: \(lifePoints)  -- Force d'attaque: \(weapon.attackValue)")
    }
    
    ///Attack method, we take lifepoints to our enemy with our weapon.
    func attack(against: Characters) {
        if self.weapon.attackValue > 0 && self.lifePoints > 0 && against.lifePoints > 0 {
            against.lifePoints -= self.weapon.attackValue
        }else{
            print("Vous êtes mort, vous ne pouvez plus combattre.")
        }
        print("""
                =================================================================================================
                Vous avez bien combattu, il ne reste plus que \(against.lifePoints) points de vie à votre ennemi.
                =================================================================================================
                """)
    }
}


