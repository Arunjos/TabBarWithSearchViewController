//
//  ViewController.swift
//  TabBarWithSearchOption
//
//  Created by Arun Jose on 14/08/18.
//  Copyright © 2018 Arun Jose. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    //Variables
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 11.0, *) {
            
            //Setup Search Controller
            self.searchController.obscuresBackgroundDuringPresentation = false
            self.searchController.searchBar.placeholder = "Search"
            self.searchController.searchBar.barStyle = .black
            self.searchController.searchBar.delegate = self
            self.definesPresentationContext = true
            self.navigationItem.searchController = searchController
            self.navigationItem.title = "Test1ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt"
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationItem.searchController = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
    {
        //Show Cancel
        searchBar.setShowsCancelButton(true, animated: true)
        searchBar.tintColor = .white
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        //Filter function
//        self.filterFunction(searchText: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        //Hide Cancel
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.resignFirstResponder()
        
//        guard let term = searchBar.text , term.trim().isEmpty == false else {
//
//            //Notification "White spaces are not permitted"
//            return
//        }
        
        //Filter function
//        self.filterFunction(searchText: term)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
    {
        //Hide Cancel
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.text = String()
        searchBar.resignFirstResponder()
        
        //Filter function
//        self.filterFunction(searchText: searchBar.text)
    }

}

