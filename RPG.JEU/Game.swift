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
    
    private var player1: Player?
    private var player2: Player?
    private var playerTurn: Player?
    private var playerNotTurn: Player?
    
    private var isPlayerOneTurn: Bool = true
    
    private var selectedCharacter: Character?
    
    
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
        player1 = Player(character: [tabChoiceOfCharacter[0],  tabChoiceOfCharacter[1], tabChoiceOfCharacter[2]])
        
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
        player2 = Player(character: [tabChoiceOfCharacter[3],  tabChoiceOfCharacter[4], tabChoiceOfCharacter[5]])
    }
    
    
    
    func selectCharacter() {
        
        playerTurn = (isPlayerOneTurn) ? player1 : player2
        playerNotTurn = (isPlayerOneTurn) ? player2 : player1
        
        guard let playerTurn = playerTurn else { return }
        guard let playerNotTurn = playerNotTurn else { return }
        
        // MARK: - Version ternaire du if ci dessous
        //isPlayerOneTurn ? print("\nPlayer 1: Choose a character :") : print("\nPlayer 2: Choose a character :")
        
        if isPlayerOneTurn {
            print("\nPlayer 1: Choose a character :")
        } else {
            print("\nPlayer 2: Choose a character :")
        }
        
        playerTurn.printCharacterInLife()
        
        print("What's your choice ? (please, pick a number for your attacker) :")
        
        var index: Int = Int()
        //        selectedCharacter = playerTurn.characterInLife[index]
        
        
        repeat {
            index = Tools.shared.getInputInt()
            
            switch index {
            case 1 :
                index += 1
                selectedCharacter = playerTurn.characterInLife[0]
                print("Your choice attacker is \(playerTurn.characterInLife[0]))")
                
            case 2 :
                index += 1
                selectedCharacter = playerTurn.characterInLife[1]
                print("Your choice attacker is \(playerTurn.characterInLife[1]))")
                
            case 3 :
                index += 1
                selectedCharacter = playerTurn.characterInLife[2]
                print("Your choice attacker is \(playerTurn.characterInLife[2]))")
                
            default:
                print("You did not choose a character")
            }
        } while index < 0
        
        
        playerNotTurn.printCharacterInLife()
        
        print("What's your choice ? (please, pick a number for your ennemy) :")
        
        
        repeat {
            index = Tools.shared.getInputInt()
            
            switch index {
            case 1 :
                index += 1
                selectedCharacter = playerNotTurn.characterInLife[0]
                print("Your choice ennemy is \(playerNotTurn.characterInLife[0]))")
                
            case 2 :
                index += 1
                selectedCharacter = playerNotTurn.characterInLife[1]
                print("Your choice ennemy is \(playerNotTurn.characterInLife[1]))")
                
            case 3 :
                index += 1
                selectedCharacter = playerNotTurn.characterInLife[2]
                print("Your choice ennemy is \(playerNotTurn.characterInLife[2]))")
                
                
            default:
                print("You did not choose a character")
            }
            
        } while index < 0
        numberRound += 1
        //        print("player 1 attack \(playerTurn.characterInLife) player 2 \(playerNotTurn.characterInLife)")
        
        isPlayerOneTurn.toggle()
    }
    
    
    
    func fight() {
        
        var attackingCharacter = playerTurn?.characterInLife.description
        var defenderCharacter = playerNotTurn?.characterInLife.description
        
        if attackingCharacter == "Warrior" {
            chooseActionToDo()
            Character.attack(defenderCharacter)
            
        }
        else if attackingCharacter == "Zombie" {
            chooseActionToDo()
            //            Character.attack(Character)
            
        } else {
            
            attackingCharacter = "Magician"
            //                Magician.attack(Character)
            
        }
    }
    func chooseActionToDo() {
        
        //        guard let selectedCharacter = selectedCharacter else { return }
        
        //        if selectedCharacter is Warrior {
        
        let randomChest = Int.random(in: 1...20)
        if randomChest == 8 {
            let newWeapon = Chest()
            
            print("WEAPON MISTERY, (\(newWeapon.chestmystery()?.name), (\(newWeapon.chestmystery()?.damage)")
        }
    }
    
    
    
    
    func heroAlive(player: Player) -> Bool {
        
        //permet de verifier si le hero est toujours en vie et de le supprimer ci il n'a plus de point de vie
        for(index, character) in player.team.enumerated() {
            if character.life <= 0 {
                player.characterDead.append(character)
                player.team.remove(at: index)
            }
        }
        //return false if team is dead
        if player.team.count == 0 {
            return false
        }
        //return True if i have one character
        return true
    }
    
           /// Function that displays the winner as well as the game stats.
    private func statsGame() {
        
        print("The team is dead !")
        if player1?.characterInLife.count == 0 {
            print( "The player 2 is a Winner")
                
               } else {
                   print("The player 2 is a winner")
               }
                print("The number of round is : \(numberRound)")
                print("The Character Dead is :")
       
        for characterDead in player1?.characterDead {
                   print("The character \(characterDead.name) is \(type(of: characterDead)) \(characterDead.life) life point ")
                }
           }

}

