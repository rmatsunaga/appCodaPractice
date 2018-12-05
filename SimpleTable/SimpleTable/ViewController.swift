//
//  ViewController.swift
//  SimpleTable
//
//  Created by Rey Matsunaga on 12/4/18.
//  Copyright © 2018 Rey Matsunaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var restaurantNames = ["Barrafina", "Bourke Street Bakery", "Cafe Deadend", "Cafe Loisl", "Cafe Lore", "CASK Pub and Kitchen", "Confessional", "Donostia", "Five Leaves", "For Kee Restaurant", "Graham Avenue Meats And Deli", "Haigh's Chocolate", "Homei", "Palomino Espresso", "Petite Oyster", "Po's Atelier", "Royal Oak", "Teakha", "Traif", "Upstate", "Waffle & Wolf"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->  Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named:restaurantNames[indexPath.row])
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}




