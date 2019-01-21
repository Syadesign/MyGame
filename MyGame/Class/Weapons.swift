//
//  Weapons.swift
//  MyGame
//
//  Created by samahir adi on 21/01/2019.
//  Copyright © 2019 Syadesign. All rights reserved.
//

import Foundation

/// we enumerate all the weapons the characters can use
enum Weapon: String, CaseIterable{
    case sword
    case potion
    case ax
    case hammer
    case magicSpear
    case magicWhip
    case magicMace
    
    var attackValue :Int {
        switch self {
        case .sword: return 10
        case .potion: return 10
        case .ax: return 12
        case .hammer: return 15
        case .magicSpear: return 20
        case .magicWhip: return 25
        case .magicMace: return 30
        }
    }
    static var magicWeapons: [Weapon] = [.magicMace, .magicWhip, .magicSpear]
}
