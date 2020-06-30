//
//  weapon.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Create the Weapon Class

class Weapon {
    
    //Creation of the property of : name, damage
    
    var name: String
    var damage: Int
    
    
    //Initialize
    
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}

