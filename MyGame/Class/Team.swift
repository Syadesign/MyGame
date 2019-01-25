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
    
    var points: Int{
        var somme = 0
        for hero in teamComposition {
           somme += hero.lifePoints
        }
        return somme
    }
    
    var name :String = ""

    var heroesName = [String]()
    
    ///Choose 3 characters for the team
    func composeATeam() {
        
        print("""
                ==================================================================================================================
                Choississez 3 personnages parmis les suivants pour composer votre équipe en tapant les numéros correspondants puis choisissez leurs noms:
                1 - Le combattant --- Arme: Épée --- Points de vie: 100 --- Puissance d'attaque: 10
                2 - Le Colosse --- Arme: Marteau --- Points de vie: 90 --- Puissance d'attaque: 15
                3 - Le Nain --- Arme: Hache --- Points de vie: 70 --- Puissance d'attaque: 12
                4 - Le Mage --- Points de vie: 60 -- Capacité : soigner grâce à sa potion magique qui offre 10 points de vie.
                ==================================================================================================================
            """)
        
        ///Put every new charater in the array "teamComposition" and ask to enter the caharacter's name
        while teamComposition.count < Team.maxNumberOfCharacters {
            
            guard let choice = readLine() else {
                print("Vous devez choisir 3 personnages")
                return
            }
            
            switch choice {
            case "1":
                print("<<<<<<<< Vous avez choisi le combattant. >>>>>>>>")
                teamComposition.append(Combattant())
                characterName()
            case "2":
                print("<<<<<<<< Vous avez choisi le colosse. >>>>>>>>")
                teamComposition.append(Colosse())
                characterName()
            case "3":
                print("<<<<<<<< Vous avez choisi le Nain. >>>>>>>>")
                teamComposition.append(Nain())
                characterName()
            case "4":
                print("<<<<<<<< Vous avez choisi le Mage. >>>>>>>>")
                teamComposition.append(Mage())
                characterName()
            default: print("Vous devez choisir 3 personnages pour votre équipe en tapant un chiffre entre 1 et 4.")
            }
        }
    }
    
    ///Choose a name for every character and put the answer in the array "heroesName"
    func characterName() {
        var choice: String?
        for _ in 0..<teamComposition.count {
            while choice == nil || choice == "" {
                print("Choisissez le nom de votre personnage")
                choice = readLine()
                heroesName.append(choice!)
            }
        }
    }
}
