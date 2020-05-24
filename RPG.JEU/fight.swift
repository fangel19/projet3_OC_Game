//
//  fight.swift
//  RPG.JEU
//
//  Created by angelique fourny on 07/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation


// créer une fonction joué
/*
func jouer(contre personnage: Personnage) {
       var player: Int
*/
enum Classe {
    case "1", "2", "3"
}
// On demande quel type de personnage les joueurs veulent être
repeat {
    print("Classe du personnage 1 :")
    print("1. Archer")
    print("2. Guerrier")
    print("3. Mage")
    choixUtilisateur1 = input()
} while choixUtilisateur1 != 1 && choixUtilisateur1 != 2 && choixUtilisateur1 != 3

print()

repeat {
    print("Classe du personnage 2 :")
    print("1. Archer")
    print("2. Guerrier")
    print("3. Mage")
    choixUtilisateur2 = input()
} while choixUtilisateur2 != 1 && choixUtilisateur2 != 2 && choixUtilisateur2 != 3
