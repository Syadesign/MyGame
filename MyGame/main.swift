//
//  main.swift
//  MyGame
//
//  Created by samahir adi on 12/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

let myGame = Game(players: 2)
Game.welcome()
print ("=============================================== C'EST PARTI ! =============================================== ")
myGame.teamComposition()
/// If all the characters of a team are dead (lifePoints <= 0), the game is finish and the other team win.
while myGame.teams[0].points > 0 && myGame.teams[1].points > 0  {
    myGame.fight()
}
/// Display the winner 
if myGame.teams[0].points <= 0 {
    print("Bravo équipe \(myGame.teams[1].name), vous avez gagné.")
} else if myGame.teams[1].points <= 0 {
    print("Bravo équipe \(myGame.teams[0].name), vous avez gagné.")
}
