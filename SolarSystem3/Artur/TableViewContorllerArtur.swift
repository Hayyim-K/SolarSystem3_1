//
//  TableViewContorllerArtur.swift
//  SolarSystem3
//
//  Created by Artur Gedakyan on 08.11.2020.
//

import UIKit

class TableViewControllerArtur: UITableViewController {
    
    var planetList = Planet.getPlanets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        navigationItem.leftBarButtonItem = editButtonItem
        
    }
    
}

extension TableViewControllerArtur {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        planetList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetName", for: indexPath)
        
        let planet = planetList[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.textLabel?.numberOfLines = 0
        //          cell.detailTextLabel?.text = planet.distanceToSun
        cell.imageView?.image = UIImage(named: planet.name)
        //
        return cell
    }
}

extension TableViewControllerArtur {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let planet = planetList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: planet)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentPlanet = planetList.remove(at: sourceIndexPath.row)
        planetList.insert(currentPlanet, at: destinationIndexPath.row)
    }
    
}
