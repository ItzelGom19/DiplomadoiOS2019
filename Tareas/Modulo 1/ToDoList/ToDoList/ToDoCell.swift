//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Itzel GoOm on 06/09/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
}

