//
//  weapon.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

// Créer la classe Weapon

class Weapon {
    
    // créer les prorpiété : name, damage
    
    var name: String
    var damage: Int
    
    
    //Initier la classe
    
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}

