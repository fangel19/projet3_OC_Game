//
//  chest.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//Create the Chest Class

class Chest {
    
    /*Magic chest with two weapons :
     swissKnife with 35 pts of damage
     bamboo with 10 pts of damage*/
    
    let swissKnife = Weapon(name: "swissKnife", damage: 75)
    let bamboo = Weapon(name: "bamboo", damage: 30)
    
    //Creation of a chestmystery function to display a random chest
    
    func chestmystery() -> Weapon {
        
        let randomInt = Int.random(in: 1...10)
        
        if randomInt < 5 {
            
            return swissKnife
            
        } else  {
            return bamboo
            
        }
        
    }
}
