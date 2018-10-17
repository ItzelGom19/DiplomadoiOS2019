//
//  homeViewController.swift
//  DiplomadoUNAM
//
//  Created by Itzel GoOm on 12/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = view as? homeView
        customView?.setFunnyColor()
        if User.hasSession{
            performSegue(withIdentifier: "showMusic", sender: self)
        }else {
            performSegue(withIdentifier: "showLogin", sender: self)
        }
        
        
       // self.view.addSubview(loginVC.view)
        
//        let loginView = Bundle.main.loadNibNamed("LoginView", owner: nil, options: nil)! [0] as! LoginView
//        self.view.addSubview(loginView)

        // Do any additional setup after loading the view.
        
//        if User.hasSession {
//            let musicSelectionVC = MusicSelectionViewController()
//            self.navigationController?.pushViewController(musicSelectionVC, animated: true)
//            
//        }else {
//            let loginVC = LoginViewController()
//            self.navigationController?.pushViewController(loginVC, animated: true)
//            
//        }
        
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
   
    
    
//    override func loadView() {
//        let custonView = homeView()
//        custonView.setFunnyColor()
//        view = custonView
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
