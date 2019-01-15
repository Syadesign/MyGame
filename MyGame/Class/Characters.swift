//
//  Characters.swift
//  MyGame
//
//  Created by samahir adi on 14/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation

enum Weapon: String {
    case sword
    
    var attackValue :Int {
        switch self {
        case .sword: return 10
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
    
    func description (){
        print ("Personnage:\(typeOfCharacters) Arme: \(weapon.rawValue) Points de vie: \(lifePoints) Force d'attaque: \(weapon.attackValue)")
    }
    
    func attack ( against: Characters){
        if self.weapon.attackValue > 0 && self.lifePoints > 0 && against.lifePoints > 0 {
            against.lifePoints -= self.weapon.attackValue
        }else{
            print ("Vous êtes morts, vous ne pouvez plus combattre.")
        }
        print ("""
                Points de vie de votre ennemi : \(against.lifePoints) :
                """)
    }
}


