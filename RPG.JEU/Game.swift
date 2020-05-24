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
    
 
    var numberRound = 0
    
    
    
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
                print(tabNamesOfCharacters[0], tabChoiceOfCharacter[0], tabNamesOfCharacters[1], tabChoiceOfCharacter[1], tabChoiceOfCharacter[2], tabNamesOfCharacters[2])
        
        

        //  playerOne = Player(names: [tabNamesOfCharacters[0], tabNamesOfCharacters[1], tabNamesOfCharacters[2]])
        
//        print("\nSelect the names of your characters :\n")
//
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
        
    }
    
    //
    //
    //    func selectCharacter(team: [Character]) -> Character {
    //        var choice = 0
    //
    //        for (index, character) in team.enumerated() {
    //
    //        }
    //        repeat {
    //            choice = Int(readLine())
    //        } while choice < 1 && choice > team.count {
    //            return team[choice - 1]
    //        }
    //        // Return function selecCharacter.
    //        return selectCharacter()
    //    }
        
    
    
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
        
        
        
        
//        déroulement d'un round
//        il y a un attacher et un ennemy
//        func round(attacker: Player, ennemy: Player) {
//
//            //on ajoute le coffre
//            let chest = Chest()
//
//            //choisir un personnage dans l'équipe
//            let attackerCharacter = attacker.team
//
//            //Si l'attanquant est Warrior
//            if attackerCharacter is Warrior {
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
//            func fight() {
//
//                //tant qu'il y a un personnage en vie dans l'equipe 1 et l'équipe 2
//                while heroAlive(player: player1) && heroAlive(player: player2) {
//
//                    print("joueur1 commence")
//                    //Attaquer et ajouter un tour
//                    round(attacker: player1, ennemy: player2)
//                    numberRound += 1
//
//                   //si il reste des personnages c'est au joueur 2 de jouer
//                    if heroAlive(player: player2) {
//                        print("joueur 2 choisi ton hero")
//
//                        round(attacker: player2, ennemy: player1)
//                    }
//                }
//            }
//
        }
