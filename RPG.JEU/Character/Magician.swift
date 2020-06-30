//
//  magician.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

// Create the Magician Class

class Magician: Character {
    
    // Magician have 250 pts of life and Drug is her Weapon
    
    static let type = "Magician"
    static let life = 250
    static let weapon = Drug()
    
    // Initialize Magician

    init(name: String) {
        super.init(type: "Magician", name: name, weapon: Drug(), life: 250)
    }
    
}
