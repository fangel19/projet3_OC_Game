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
        
        let randomInt = Int.random(in: 1...10)
        
        if randomInt < 5 {
            
            return swissKnife
            
        } else  {
            return bamboo
            
        }
            return nil
    }

}
