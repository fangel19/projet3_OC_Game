//
//  magician.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Créer la classe Magician

class Magician: Character {
    
    static let type = "Magician"
    static let life = 250
    static let weapon = Drug()
    
    //initier la Magician

    init(name: String) {
        super.init(type: "Magician", name: name, weapon: Drug(), life: 250)
    }
    
}
