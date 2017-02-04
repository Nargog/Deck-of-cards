//
//  kortlekModel.swift
//  kortlek
//
//  Created by Mats Hammarqvist on 2017-01-31.
//  Copyright © 2017 Mats Hammarqvist. All rights reserved.
//

import Foundation

enum Valör : Int {
    case ess = 1
    case två, tre, fyra, fem,sex,sju,åtta,nio,tio
    case knekt, dam, kung
    
    func enkelBeskrivning() -> String{
        switch self {
        case .ess:
            return "ess"
        case .knekt:
            return "knekt"
        case .dam:
            return "dam"
        case .kung:
            return "kung"
        default:
            return String(self.rawValue)
        }
    }
    static let allValues = [ ess, två, tre, fyra, fem,sex,sju,åtta,nio,tio, knekt, dam, kung]
}

enum Färg: Int {
    case spader = 1, hjärter, ruter, klöver
    func enkelBeskrivning() -> String {
        switch self {
        case .spader:
            return "♠️"
        case .hjärter:
            return "♥️"
        case .ruter:
            return "♦️"
        case .klöver:
            return "♣️"
        }
    }
    static let allValues = [spader, hjärter, ruter, klöver]
}

struct Card {
    let färg : Färg
    let valör : Valör
}



struct Kortlek {
    var kort = [Card]()
    
    mutating func blanda () {
        var tempKort = self.kort[2]
        self.kort[2] = self.kort[3]
        self.kort[3] = tempKort
        tempKort = self.kort[3]
        
    }
    
    init () {
        for tempFärg in Färg.allValues {
            for tempValör in Valör.allValues {
                kort.append(Card(färg: tempFärg, valör: tempValör))
            }
        }
    }
}



