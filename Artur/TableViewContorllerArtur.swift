//
//  TableViewContorllerArtur.swift
//  SolarSystem3
//
//  Created by Artur Gedakyan on 08.11.2020.
//

import UIKit

class TableViewControllerArtur: UITableViewController {
    
    var planetList = Planet.getPlanets
    var planet2 = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        navigationItem.leftBarButtonItem = editButtonItem
        
    }
    
}

extension TableViewControllerArtur {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        planet2.names.count
    }
}
