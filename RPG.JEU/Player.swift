//
//  player.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

//créer class Player {
class Player {
    // tableau de perso vivant?
    
    // tableau de perso mort ?
    var characterInLife: [Character] = [Character]()
    var characterDead: [Character] = [Character]()

    var team = [Character]()
    
    init(character: [Character]) {
        character.forEach { (character) in
            self.characterInLife.append(character)
        }
    }
    
}

//    init(names: [String]) {
//        names.forEach { (name) in
//            self.characterInLife.append()
//        }
//    }
