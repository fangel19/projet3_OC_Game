//
//  game.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation
// class Game
class Game {
    
    var player1: Player?
    var player2: Player?
    var numberRound = 0
    
    init() {
        

    }
    
    // Creation of the game application
    
    func intro() {
        print("Welcome to the game !")
    }
    
    //Choice of 3 characters per team
    
    func choiceTeam(name: String) -> Character {
        
        var teamnumber = 0
        
        print("choice a characters"
            + "\n1. The Warrior with 200 life points and 23 attack point"
            + "\n2. The Magician with 250 life points and 20 attack point of care"
            + "\n3. The Zombie with 150 life points and 33 attack point")
        
        repeat {
            
            if let team = readLine() {
                switch team {
                case "1":
                    teamnumber += 1
                    let character = Warrior(name: name)
                    print(character.name, character.weapon.name, character.weapon.damage)
                    return character
                    
                case "2":
                    teamnumber += 1
                    let character = Magician(name: name)
                    print(character.name, character.weapon.name, character.weapon.damage)
                    return character
                    
                case "3":
                    teamnumber += 1
                    let character = Zombie(name: name)
                    print(character.name, character.weapon.name, character.weapon.damage)
                    return character
                    
                default:
                    print("You did not choose a character")
                }
            }
            // Repeat until the user has chosen a character
            
        } while teamnumber < 1
        
    }
     
    //function that asks a user to give a name to their characters
    
    func askNameOfCharacter() {
        // variable for choice of name in string array
        //variable that returns an array of characters
        
        var tabNamesOfCharacters: [String] = [String]()
        var tabChoiceOfCharacter: [Character] = [Character]()
        
        repeat {

            print("\n Player 1 -> Choice name of your character \(tabNamesOfCharacters.count + 1) :")
            var check: Bool = false
            
            repeat {
                let name = Tools.shared.getInputString()
                if !tabNamesOfCharacters.contains(name) {
                    check = true
                    tabChoiceOfCharacter.append(choiceTeam(name: name))
                    tabNamesOfCharacters.append(name)
                } else {
                    print("\(name) is already taken !")
                }
            } while check == false
            
        } while tabNamesOfCharacters.count != 3
        print(tabNamesOfCharacters[0], tabChoiceOfCharacter[0].type, tabNamesOfCharacters[1], tabChoiceOfCharacter[1].type, tabChoiceOfCharacter[2].type, tabNamesOfCharacters[2])
        player1 = Player(character: tabChoiceOfCharacter)
                
        repeat {
            
            print("\n Player 2 -> Choice name of your character  \(tabNamesOfCharacters.count - 2) : ")
            var check: Bool = false

            repeat {
                let name = Tools.shared.getInputString()
                if !tabNamesOfCharacters.contains(name) {
                    check = true
                    tabChoiceOfCharacter.append(choiceTeam(name: name))
                    tabNamesOfCharacters.append(name)
                } else {
                    print("\(name) is already taken!\n")
                }
            } while check == false

        } while tabNamesOfCharacters.count != 6
        print(tabNamesOfCharacters[3], tabChoiceOfCharacter[3], tabNamesOfCharacters[4], tabChoiceOfCharacter[4], tabChoiceOfCharacter[5], tabNamesOfCharacters[5])
         //playerTwo = Player(names: [tabNamesOfCharacters[0], tabNamesOfCharacters[1], tabNamesOfCharacters[2]])
        player2 = Player(character: tabChoiceOfCharacter)
    }
    
    
    
    //reste t-il des joueurs en vie
    
//    func heroAlive(player: Player) -> Bool {
//
//        //permet de verifier si le hero est toujours en vie et de le supprimer ci il n'a plus de point de vie
//        for(index, character) in player.characterInLife {
//            if character.life <= 0 {
//                player.team.remove(at: index)
//            }
//        }
//        //retourne false si toutes l'equipe est morte
//        if player.team.count == 0 {
//            return false
//        }
//        //retourne True tant qu'il y a un personnage
//        return true
//    }
//
        
  

        
        
//        the round
//        if i an attacker and a ennamy
    func round(attacker: [Player], ennemy: [Player]) {
        
        var attackerChoice = player1?.characterInLife
        var ennemyChoice = player2?.characterInLife
        
        while attacker.count != 0 {
            for (index, attacker) in player1?.characterInLife.enumerated() {
                print("\(index + 1) - \(attacker.name) with \(attacker.life) pv")
                
                if let choiceName = Tools.shared.getInputInt() {
                    switch choiceName {
                    case 1 :
                        print("Your choice attacker is \(tabNamesOfCharacters[0]))")
                    case 2 :
                        print("Your choice attacker is \(tabNamesOfCharacters[1]))")
                    case 3 :
                        print("Your choice attacker is \(tabNamesOfCharacters[2]))")
                        
                    default:
                        print("You did not choose a character")
                        
                    }
                    
                }
            }
        }

        while ennemy.count < 3 {
            for (index, ennemy) in player2?.characterInLife.enumerated() {
                print("\(index + 1) - \(ennemy.name) with \(ennemy.life) pv")
                
                if let choiceName = Tools.shared.getInputInt() {
                    switch choiceName {
                    case 1 :
                        print("Your choice attacker is \(tabNamesOfCharacters[3]))")
                    case 2 :
                        print("Your choice attacker is \(tabNamesOfCharacters[4]))")
                    case 3 :
                        print("Your choice attacker is \(tabNamesOfCharacters[5]))")
                        
                    default:
                        print("You did not choose a character")
                    }
                }
            }
        }
//            //Si l'attanquant est Warrior
//            if attackerCharacter in characterInLife is Warrior {
//
//                if let newWaepon = chest.chestmystery() {
//
//                    print("Coffre magique")
//
//                   attacker.damage = newWaepon
//                }
//
//                if attackerCharacter is Zombie {
//
//                } else {
//
//                    if let newWaepon = chest.chestmystery() {
//
//                        print("Coffre magique")
//
//                        zombie.weapon = newWaepon
//                    }
//
//                }
//            }
//    }
//
//
////            func fight() {
////
////                //tant qu'il y a un personnage en vie dans l'equipe 1 et l'équipe 2
////                while choiceTeam(player: player1) && choiceTeam(name: <#T##String#>)(player: player2) {
////
////                    print("joueur1 commence")
////                    //Attaquer et ajouter un tour
////                    round(attacker: player1, ennemy: player2)
////                    numberRound += 1
////
////                   //si il reste des personnages c'est au joueur 2 de jouer
////                    if heroAlive(player: player2) {
////                        print("joueur 2 choisi ton hero")
////
////                        round(attacker: player2, ennemy: player1)
////                    }
////                }
            }

        }
