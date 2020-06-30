//
//  character.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Create the Character Class, with function attack and heal

class Character {
    
    /*Creation of the property of :
     name
     life
     weapon
     heal */
    let type: String
    let name: String
    var life: Int
    var weapon: Weapon
    
    //Initialize the property
    
    init(type: String, name: String, weapon: Weapon, life: Int) {
        self.type = type
        self.name = name
        self.life = life
        self.weapon = weapon
    }
    //Attack function deals damage
    func attack(target: Character, player: Player) {
        target.life -= weapon.damage
        
        print("\(self.name) attack \(target.name) and inflicts on him \(self.weapon.damage) damage. \(target.name) now \(target.life) life point")
        
       //If the character is dead remove it from characterInLife and append a characterDead
        
        if target.life <= 0 {
            target.life = 0
            print("\(target.name) is dead")
            player.numberOfCharacterDies += 1
            player.characterInLife.removeAll { (character) -> Bool in
                return target.name == character.name ? true : false
            }
            player.characterDead.append(target)
        }
        
    }
    //The heal function gives hit points
    func heal(target: Character) {
        target.life -= weapon.damage
        
        print("\(self.name) heal \(target.name) and heal on him \(self.weapon.damage). \(target.name) now \(target.life) life point")
    }
    
}
