//
//  chest.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation


class Chest {
    
    //coffre magique avec deux armes
    let swissKnife = Weapon(name: "swiwwKnife", damage: 35)
    let bamboo = Weapon(name: "swiwwKnife", damage: 10)
    
    //fonction chestmystery pour avoir un tirage aléatoir
    
    func chestmystery() -> Weapon? {
        
        let randomInt = Int.random(in: 1...4)
        
        if randomInt == 3 {
            
            return swissKnife
            
        } else if randomInt == 7 {
            return bamboo
            
        }
            return nil
    }

}
