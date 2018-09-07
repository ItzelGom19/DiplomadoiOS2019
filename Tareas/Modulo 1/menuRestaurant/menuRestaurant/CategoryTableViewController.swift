//
//  CategoryTableViewController.swift
//  menuRestaurant
//
//  Created by Itzel GoOm on 06/09/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    
    var categories = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        MenuController.shared.fetchCategories {  (categories) in
            if let categories = categories {
                self.updateUI(with: categories)
        }
        }

       
    }
    

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellIdentifier", for: indexPath)
        configure(cell: cell, forItemAt: indexPath)
        return cell
    }
    
     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func updateUI(with categories: [String]){
        DispatchQueue.main.async {
            self.categories = categories
            self.tableView.reloadData()
            
        }
    }

    func configure(cell: UITableViewCell, forItemAt indexPath: IndexPath){
        let categoryString = categories[indexPath.row]
        cell.textLabel?.text = categoryString.capitalized
    }
    
   
    
//segue to MenuTableViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "MenuSegue"{
            let menuTableViewController  = segue.destination as! MenuTableViewController
            let index = tableView.indexPathForSelectedRow!.row
            menuTableViewController.category = categories[index]
            
        }
    }
   
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
}
