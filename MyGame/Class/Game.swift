//
//  Game.swift
//  MyGame
//
//  Create class for game
class Game {
    //Number of players
    let players: Int
    
    var teams = [Team]()
    
    
    
    init(players: Int) {
        self.players = players
    }
    
    // Display a welcome message
    static func welcome() {
        print("Bienvenue à Westeros, où tous les combats se terminent par la mort. Êtes-vous prêts ?")
    }
    
    // Choose a team name
    func teamName() -> String {
        var choiceName :String?
        while choiceName == nil || choiceName == "" {
            print("Choissisez le nom de votre équipe")
            choiceName = readLine()
        }
        print ("Bienvenue équipe \(choiceName!)")
        return choiceName!
    }
    
    func teamComposition() {
        for _ in 0..<players {
            let myTeam = Team()
            myTeam.name = myGame.teamName()
            myTeam.composeATeam()
            print ("Votre équipe est composée de \(myTeam.teamComposition)")
            teams.append(myTeam)
        }
    }
    
    func chooseAttacker() -> Characters? {
        let myTeam = Team()
        var myAttacker :Characters?
        print ("""
            Choisissez un personnage de votre équipe pour le combat en tapant le numéro correspondant.
            1: \(myTeam.teamComposition[0])
            2: \(myTeam.teamComposition[1])
            3: \(myTeam.teamComposition[2])
            """)
        
        for _ in 0..<myTeam.teamComposition.count {
            let attacker = readLine()
            guard attacker == "1" || attacker == "2" || attacker == "3" else {return nil}
            switch attacker {
            case "1":
                print ("Vous avez choisi \(myTeam.teamComposition[0])")
                myAttacker = myTeam.teamComposition[0]
            case "2":
                print ("Vous avez choisi \(myTeam.teamComposition[1]).")
                myAttacker = myTeam.teamComposition[1]
            case "3":
                print ("Vous avez choisi \(myTeam.teamComposition[2])")
                myAttacker = myTeam.teamComposition[2]
            default: print ("Error")
            }
        }
        return myAttacker!
    }
}



