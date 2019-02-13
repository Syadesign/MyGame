//
//  Mage.swift
//  MyGame
//
//  Created by samahir adi on 17/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation


// This class inherits from the characters class
class Mage: Characters {
    
    init (){
        super.init (typeOfCharacters: "Mage", weapon: .potion, lifePoints: 10)
    }
    
    //The message give the "force de soin" in the place of "force d'attaque".
    override var description: String {
        return "-- Arme: \(weapon.rawValue) -- Points de vie: \(lifePoints)  -- Force de soin: \(weapon.attackValue)"
    }
    
    ///Healing method, only for the mage, who can give lifePoints to his team mate.
    func heal(healing: Characters) {
        if self.weapon.attackValue > 0 && self.lifePoints > 0 && healing.lifePoints > 0 {
            healing.lifePoints += self.weapon.attackValue
        }else{
            print("Vous êtes mort, vous ne pouvez plus soigner.")
        }
        print("""
            =================================================================================================
            🤕 Vous avez soigné votre coéquipier, il lui reste desormais \(healing.lifePoints) points de vie.
            =================================================================================================
            """)
    }
}





