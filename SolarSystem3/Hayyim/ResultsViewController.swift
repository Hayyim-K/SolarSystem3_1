//
//  ResultsViewController.swift
//  SolarSystem3
//
//  Created by vitasiy on 09.11.2020.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var numberOfPointsFromNumOfSatellitesVC: Int!
    let userData = User.userData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "Поздравляем \(userData.username)!\n Ваш результат \(numberOfPointsFromNumOfSatellitesVC ?? 100)"
        
    }
}
