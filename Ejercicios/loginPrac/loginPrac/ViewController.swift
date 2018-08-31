//
//  ViewController.swift
//  loginPrac
//
//  Created by Itzel GoOm on 24/08/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        if userNameField.text == "Itzel" && passwordField.text == "1234" {
            performSegue(withIdentifier: "Welcome", sender: nil)
        }else {
            performSegue(withIdentifier: "Error", sender: nil)
        }
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

