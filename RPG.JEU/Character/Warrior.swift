//
//  warrior.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Créer la classe Warrior

class Warrior: Character {
    static let type = "Warrior"
    static let life = 200
    static let weapon = Lightsaber()
    
    //initier la Warrior
    
    init(name: String) {
        super.init(type: "Warrior", name: name, weapon: Lightsaber(), life: 200)
    }
    
}

