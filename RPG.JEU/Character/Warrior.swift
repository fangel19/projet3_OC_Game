//
//  warrior.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

// Create the Warrior Class

class Warrior: Character {
    
    // Warrior have 200 pts of life and Lightsaber is her Weapon
    
    static let type = "Warrior"
    static let life = 200
    static let weapon = Lightsaber()
    
    // Initialize Warrior
    
    init(name: String) {
        super.init(type: "Warrior", name: name, weapon: Lightsaber(), life: 200)
    }
    
}

