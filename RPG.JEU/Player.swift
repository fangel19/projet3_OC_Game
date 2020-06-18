//
//  player.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//créer class Player {
class Player {
    // tableau de perso vivant?
    
    // tableau de perso mort ?
    var characterInLife: [Character] = [Character]()
    var characterDead: [Character] = [Character]()

    var team = [Character]()
    
    init(character: [Character]) {
        character.forEach { (character) in
            self.characterInLife.append(character)
//            self.characterDead.append(character)
        }
        for i in characterInLife {
            print("CHARACTER ALIVE ->", i.name, i.life, i.type, i.weapon)
        }
//        for i in characterDead {
//            print("CHARACTER DEAD ->", i.name, i.life, i.type, i.weapon)
//
//        }
    }
    
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
