//
//  character.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Création classe caratéres mére de warrior, magician, zombie

class Character {
    
    /*Créer une proprièté name
     Créer une proprièté life
     Créer une proprieté weapon
     Créer une proprieté heal */
    let type: String
    let name: String
    var life: Int
    var weapon: Weapon
    
    //Initialiser les proprièté
    
    init(type: String, name: String, weapon: Weapon, life: Int) {
        self.type = type
        self.name = name
        self.life = life
        self.weapon = weapon
    }
    //func attack permet a un personnage d'infliger des dégats
    func attack(target: Character) {
        target.life -= weapon.damage
        
        print("\(self.name) attack \(target.name) and inflicts on him \(self.weapon.damage) damage. \(target.name) now \(target.life) life point")
        
        if target.life <= 0 {
            target.life = 0
            print("\(name) is dead")
            
        }
        
    }
    func heal(target: Character) {
        target.life -= weapon.damage
        
        print("\(self.name) heal \(target.name) and heal on him \(self.weapon.damage). \(target.name) now \(target.life) life point")
    }
    
}
