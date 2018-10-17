//
//  ViewController.swift
//  WaterCounter
//
//  Created by Itzel GoOm on 13/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var counterView: CounterView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
   
    @IBAction func plusButton(_ sender: ActionButton) {
    }
    
    
    @IBAction func restButton(_ sender: ActionButton) {
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

