//
//  ViewController.swift
//  Movie
//
//  Created by Mélanie Obringer on 02/11/2019.
//  Copyright © 2019 Mélanie Obringer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Property: copy of list
    
    var movieList = Movie.list
    
    //MARK: - Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - ViewdidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Method
    
    // convert the year in type Int to String
    func convertToString(value: Int) -> String {
        return String(value)
    }
}

// MARK: Extension to create tableView

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(withClassment: indexPath.row, title: movieList[indexPath.row].title, year: movieList[indexPath.row].year)
        return cell
    }
}

//MARK: - Extension to delete a cell in tableView

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // first delete data
            movieList.remove(at: indexPath.row)
            
            // after delete cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.reloadData()
        }
    }
}
