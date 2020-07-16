//
//  zombie.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

// Creation of the Zombie Class

class Zombie: Character {
    
    // Zombir have 150 pts of life and Denture is her Weapon

    static let type = "Zombie"
    static let life = 150
    static let weapon = Denture()
    
    // Initialize Zombie

    init(name: String) {
        super.init(type: "Zombie", name: name, weapon: Denture(), life: 150)
    }

}

