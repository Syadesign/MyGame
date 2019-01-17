
//  Create class for game
class Game {
    //Number of players
    let players: Int
    
    var teams = [Team]()
    
    init(players: Int) {
        self.players = players
    }
    
    ///Display a welcome message
    static func welcome() {
        print("Bienvenue à Westeros, où tous les combats se terminent par la mort. Êtes-vous prêts ?")
    }
    
    /// Choose a team name
    func teamName() -> String {
        var choiceName :String?
        while choiceName == nil || choiceName == "" {
            print("Choissisez le nom de votre équipe")
            choiceName = readLine()
        }
        print("<<<<<<<<  Bienvenue équipe \(choiceName!)  >>>>>>>>>>>>")
        return choiceName!
    }
    
    ///Create our 2 teams with their name and composition of 3 characters
    func teamComposition() {
        for _ in 0..<players {
            let myTeam = Team()
            myTeam.name = myGame.teamName()
            myTeam.composeATeam()
            print("""
                ********************************************************
                Votre équipe est composée de:
                1 - \(myTeam.heroesName[0]) : \(myTeam.teamComposition[0]) 
                2 - \(myTeam.heroesName[1]) : \(myTeam.teamComposition[1])
                3 - \(myTeam.heroesName[2]) : \(myTeam.teamComposition[2])
                ********************************************************
                """)
            teams.append(myTeam)
        }
    }
    
    ///Choose the caracter of your team who will fight
    func chooseAttacker(from team: Int) ->Characters {
        var attacker: String?
        while !["1", "2", "3"].contains(attacker)  {
            print("""
                ==================================================================================================================
                Choisissez un personnage de votre équipe pour le combat en tapant le numéro correspondant.
                1 - \(teams[team].heroesName[0]) le \(teams[team].teamComposition[0])
                2 - \(teams[team].heroesName[1]) le \(teams[team].teamComposition[1])
                3 - \(teams[team].heroesName[2]) le \(teams[team].teamComposition[2])
                ==================================================================================================================
                """)
            attacker = readLine()
        }
        let hero = Int(attacker!)! - 1
        print("<<<<<<<< Vous avez choisi d'envoyer \(teams[team].heroesName[hero]) le \(teams[team].teamComposition[hero]) au combat. >>>>>>>>")
        return teams[team].teamComposition[hero]
    }
    
    ///Choose the enemy team with the number 1 or 2 (1= Index 0 in tab teams, 2= Index 1)
    func chooseTeamEnemy() -> Int {
        var teamEnemy :String?
        while !["1","2"].contains(teamEnemy)  {
            print("""
                ***************************************************************************
                Choisissez l'équipe à combattre en tapant le numéro correspondant (1 ou 2):
                ***************************************************************************
                """)
            teamEnemy = readLine()
        }
        return Int(teamEnemy!)!
    }
    
    ///Choose in the enemy's team aigainst who you will fight by writing 1, 2 or 3
    func chooseEnemy(against : Int) ->Characters {
        var enemy: String?
        let team = against - 1
        while !["1", "2", "3"].contains(enemy) {
            print("""
                ==================================================================================================================
                Choisissez un personnage à combattre dans l'équipe ennemie:
                1 - \(teams[team].heroesName[0]) le \(teams[team].teamComposition[0])
                2 - \(teams[team].heroesName[1]) le \(teams[team].teamComposition[1])
                3 - \(teams[team].heroesName[2]) le \(teams[team].teamComposition[2])
                ==================================================================================================================
                """)
            enemy = readLine()
        }
        let hero = Int(enemy!)! - 1
        print("<<<<<<<< Vous avez choisi d'affronter \(teams[team].heroesName[hero]) le \(teams[team].teamComposition[hero]). >>>>>>>>")
        return teams[team].teamComposition[hero]
    }
    
    ///Recapitulate life Points of all the caracters after every fight
    func pointsRecap() {
        print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< POINTS DE VIE RESTANTS DES ÉQUIPES  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
        for i in 0..<teams.count {
            print("""
                \(teams[i].heroesName[0]) le \(teams[i].teamComposition[0]): \(teams[i].teamComposition[0].lifePoints)
                \(teams[i].heroesName[1]) le \(teams[i].teamComposition[1]): \(teams[i].teamComposition[1].lifePoints)
                \(teams[i].heroesName[2]) le \(teams[i].teamComposition[2]): \(teams[i].teamComposition[2].lifePoints)
                ======================================================================================================
                """)
        }
    }
    
    ///We chose a character in our team to fight and choose our enemy in the other team. After the fight, we have a recap of the life points for all the characters
    func fight() {
        for i in 0..<teams.count {
            let attacker = chooseAttacker(from: i)
            let teamEnemy = chooseTeamEnemy()
            let myEnemy = chooseEnemy(against: teamEnemy)
            attacker.attack(against: myEnemy)
            pointsRecap()
        }
    }
    
    func teamDescription() {
        for i in 0..<teams.count {
            for x in 0..<Team.maxNumberOfCharacters{
                print("""
                    \(teams[i].heroesName[x]) le \(teams[i].teamComposition[x]) : \(teams[i].teamComposition[x].description())
                    =========================================================================================================
                    """)
                
            }
        }
    }
}





