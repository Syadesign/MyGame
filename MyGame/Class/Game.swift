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
    
    func start() {
        for p in 0..<players {
            let name = teamName()
            teams[p].name = name
        }
    }
    
    // Choose a team name
    func teamName() -> String {
        repeat {
            print("Choissisez le nom de votre équipe")
            if let choiceName = readLine(){
                print ("Bienvenue équipe \(choiceName)")
            }else if choiceName != "" {
                print ("Vous devez choisir un nom pour votre équipe")
            }
            return choiceName
        } while choiceName != ""
    }
}


