//
//  main.swift
//  MyGame
//
//  Created by samahir adi on 12/12/2018.
//  Copyright © 2018 Syadesign. All rights reserved.
//

let myGame = Game(players: 2)
Game.welcome()
var choiceName = myGame.teamName()
let myTeam = Team()
myTeam.composeATeam()
var teamCompo = myTeam.teamComposition
print ("Votre équipe est composée de \(teamCompo)")
let colosse = Colosse()
colosse.description()
