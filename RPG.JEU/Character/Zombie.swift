//
//  zombie.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation


//Créer la classe Zombie

class Zombie: Character {
    static let type = "Zombie"
    static let life = 150
    static let weapon = Denture()
    
    //initier la Zombie

    init(name: String) {
        super.init(type: "Zombie", name: name, weapon: Denture(), life: 150)
    }

}

