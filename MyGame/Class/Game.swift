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
    
    func teamComposition () {
        for _ in 0..<players {
            let myTeam = Team()
            myTeam.name = myGame.teamName()
            myTeam.composeATeam()
            print ("Votre équipe est composée de \(myTeam.teamComposition)")
            teams.append(myTeam)
        }
    }
    
    
    
}

