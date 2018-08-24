//
//  ViewController.swift
//  Calculadora
//
//  Created by Itzel GoOm on 18/08/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLebel = " "
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = " "
    }

   
    @IBAction func selectedButton(_ sender: UIButton) {
        titleLebel += sender.currentTitle!
        label.text = titleLebel
    }
    
    
    
    @IBAction func clear(_ sender: UIButton) {
        titleLebel = " "
        label.text = titleLebel
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

