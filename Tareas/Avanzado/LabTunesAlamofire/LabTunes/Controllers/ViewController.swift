//
//  ViewController.swift
//  LabTunes
//
//  Created by Itzel GoOm on 11/9/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func loginButtonWasTouchUpInside(_ sender: UIButton) {
        guard let username = userNameTextField.text else {return}
        guard let password = passwordTextField.text else { return}
        if User.login(userName: username, password: password) {
            performSegue(withIdentifier: "loginSuccess", sender: self)
        } else {
            
        }
        
        
        
    }
    
    
    


}

