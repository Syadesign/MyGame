//
//  main.swift
//  MyGame
//
//  Created by samahir adi on 12/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

let myGame = Game(players: 2)
let team = myGame.teams
Game.welcome()
print ("=============================================== C'EST PARTI ! =============================================== ")
myGame.teamComposition()
repeat {
    myGame.fight()
} while team[0].points > 0 && team[1].points > 0
