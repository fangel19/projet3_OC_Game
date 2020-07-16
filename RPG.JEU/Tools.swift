//
//  Tools.swift
//  RPG.JEU
//
//  Created by angelique fourny on 11/05/2020.
//  Copyright © 2020 angelique fourny. All rights reserved.
//

import Foundation

class Tools {
    
    static let shared: Tools = Tools()
    
    var numberRound: Int = Int()
    
    func increaseTurn() {
        numberRound += 1
    }
    
    // allows to check that the function will return a "string" or "int"
    
    func getInputString() -> String {
        let str = readLine()
        
        guard let strData = str else { return "" }
        
        return strData
    }

    func getInputInt() -> Int {
        let str = readLine()
        
        guard let strData = str, let strDataInt = Int(strData) else { return -1 }
        
        return strDataInt
    }
}
