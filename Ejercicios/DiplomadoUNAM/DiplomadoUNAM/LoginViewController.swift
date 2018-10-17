//
//  LoginViewController.swift
//  DiplomadoUNAM
//
//  Created by Itzel GoOm on 12/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func loadView() {
        let loginView = Bundle.main.loadNibNamed("LoginCustomView", owner: nil, options: nil)! [0] as! LoginView
        view = loginView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
