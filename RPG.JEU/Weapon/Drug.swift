//
//  drug.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

// Creation of the Drug Class, with - 50 pts of damage

class Drug: Weapon {
    
    init() {
        super.init(name: "Drug", damage: -50)
    }
}
