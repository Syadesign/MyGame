//
//  Team.swift
//  MyGame
//
//  Created by samahir adi on 17/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

import Foundation

class Team {
    
    static let maxNumberOfCharacters = 3
    
    var teamComposition = [Characters]()
    
    var name :String = ""
    
    //Choose 3 characters for the team
    func composeATeam ()  {
        
        print("""
                Choississez 3 personnages parmis les suivants pour composer votre équipe en tapant les numéros correspondants:
                1 - Le combattant --- Arme: Épée --- Points de vie: 100 --- Puissance d'attaque:30
                2 - Le Colosse --- Arme: Marteau --- Points de vie: 130 --- Puissance d'attaque:10
                3 - Le Nain --- Arme: Hache --- Points de vie: 110 --- Puissance d'attaque:20
                4 - Le Mage --- Capacité : soigner grâce à sa potion magique
            """)
        
        // Put every new charater in the array teamComposition
        while teamComposition.count < Team.maxNumberOfCharacters {
            
            guard let choice = readLine() else {
                print ("Vous devez choisir 3 personnages")
                return
            }
            
            switch choice {
            case "1":
                print ("Vous avez choisi le combattant.")
                teamComposition.append(Combattant())
            case "2":
                print ("Vous avez choisi le colosse.")
                teamComposition.append(Colosse())
            case "3":
                print ("Vous avez choisi le Nain.")
                teamComposition.append(Nain())
            case "4":
                print ("Vous avez choisi le Mage.")
                teamComposition.append(Mage())
            default: print ("Vous devez choisir 3 personnages pour votre équipe en tapant un chiffre entre 1 et 4.")
            }
        }
    }
}
