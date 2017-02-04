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
    

    
    @IBAction func btnTest(_ sender: Any) {
        lblTest.text = String("test färg \(kortlek.kort[2].färg.enkelBeskrivning())  antal kort:\(kortlek.kort.count)")
        //kortlek.blanda()
        
       // let antal2 =
    }
    @IBOutlet weak var lblTest: UILabel!
}

