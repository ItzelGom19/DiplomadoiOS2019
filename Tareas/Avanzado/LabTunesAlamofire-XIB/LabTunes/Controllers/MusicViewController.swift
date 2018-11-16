//
//  MusicViewController.swift
//  LabTunes
//
//  Created by Itzel GoOm on 11/10/18.
//  Copyright © 2018 Itzel Gomez. All rights reserved.
//

import UIKit
import Alamofire

class MusicViewController: UIViewController {
    
    var songs: [Song] = []
    let searchController = UISearchController(searchResultsController: nil)
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // downloadSongs()
        downloadSongsAlamofire()
        setupSearchBar()
        tableView.register(UINib(nibName: "SongsTableViewCell", bundle: nil), forCellReuseIdentifier: "SongsTableViewCell")

        // Do any additional setup after loading the view.
    }
    

   
    
    func downloadSongsAlamofire() {
        MusicAlamofire.fetchSongAlamofire{ (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
    }
    
    func downloadSongsByName(name: String) {
        MusicAlamofire.fetchSongAlamofire(songName: name) { (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func setupSearchBar(){
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search Songs "
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    
        
    

}

extension MusicViewController: UITableViewDataSource{
 
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongsTableViewCell", for: indexPath)
        cell.textLabel?.text = songs[indexPath.row].name
        return cell
    }
    
}

extension MusicViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        downloadSongsByName(name: searchController.searchBar.text!)    }
    
    
    
}
