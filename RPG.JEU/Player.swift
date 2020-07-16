//
//  player.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Creation of the Player Class

class Player {
    
    // array of living characters
    // array of dead figures
    
    var characterInLife: [Character] = [Character]()
    var characterDead: [Character] = [Character]()
    var numberOfCharacterDies: Int = 0
    
    init(character: [Character]) {
        character.forEach { (character) in
            self.characterInLife.append(character)
        }
    }
    
    // function to print the living and dead characters
    
    func printCharacterInLife() {
        characterInLife.enumerated().forEach { (index, character) in
            print("\(index + 1) : \(character.name) (\(character.type) \(character.life) LP - (\(character.weapon.damage) WD)")
        }
    }
    
    func printCharacterDead() {
        characterDead.enumerated().forEach { (index, character) in
            print("\(index + 1) : \(character.name) (\(character.type) \(character.life) LP - (\(character.weapon.damage) WD)")
        }
    }
    
}
