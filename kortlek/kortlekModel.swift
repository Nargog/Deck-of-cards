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
        case .ess:   //Ace
            return "ess"
        case .knekt:
            return "knekt" //knight
        case .dam:
            return "dam"  //queen
        case .kung:
            return "kung" //king
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
        case .spader: // spades
            return "♠️"
        case .hjärter: //hearts
            return "♥️"
        case .ruter:   //diamonds
            return "♦️"
        case .klöver: //clubs
            return "♣️"
        }
    }
    static let allValues = [spader, hjärter, ruter, klöver]
}

struct Card {
    let färg : Färg  //Color
    let valör : Valör //value
}



struct Kortlek {
    var kort = [Card]()
  
    // Just a simple function to test shuffling the deck
    mutating func blanda () {
       
        //  TODO
         
         //func shuffleDeck(var deckShuffled:[String]) -> [String] {
         
         for i in ((0 + 1)...self.kort.count-1).reversed() {
         let j = Int(arc4random_uniform(UInt32(i+1)))
         (kort[i], kort[j]) = (kort[j], kort[i])
         }
         //return deckShuffled
         }
         
        /*
        
        var tempKort = self.kort[2]
        self.kort[2] = self.kort[3]
        self.kort[3] = tempKort
        tempKort = self.kort[3] */
        
    
 // set up a deck with cards in order
    init () {
        for tempFärg in Färg.allValues {
            for tempValör in Valör.allValues {
                kort.append(Card(färg: tempFärg, valör: tempValör))
            }
        }
    }
}



