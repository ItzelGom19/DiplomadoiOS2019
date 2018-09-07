//
//  OrderConfirmationViewController.swift
//  menuRestaurant
//
//  Created by Itzel GoOm on 07/09/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    @IBOutlet weak var timeRemainigLabel: UILabel!
    var minutes: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeRemainigLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    
