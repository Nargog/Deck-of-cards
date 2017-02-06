//
//  ViewController.swift
//  kortlek
//
//  Created by Mats Hammarqvist on 2017-01-31.
//  Copyright © 2017 Mats Hammarqvist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    var kortlek = Kortlek()
    var handOfCards = [Card]()
    

    
    @IBAction func btnTest(_ sender: Any) {
        lblTest.text = String("test:\(kortlek.kort[2].färg.enkelBeskrivning())\(kortlek.kort[2].valör.enkelBeskrivning())")
        
        print("oblandat \n")
        
        //shuffle
        kortlek.blanda() //Class method
        
        print("blandat \n")
        
        //test to add cards to a hand of cards TODO make this a class method to draw a card
        
        for i in ((0 + 1)...self.kortlek.kort.count-1) {
           // print (kortlek.kort)
            handOfCards.append(kortlek.kort[i])
            
            //handOfCards?.kort.append(kortlek.kort[i])
            
        }
        print("<\(handOfCards)>")
        
       // let antal2 =
    }
    @IBOutlet weak var lblTest: UILabel!
}

