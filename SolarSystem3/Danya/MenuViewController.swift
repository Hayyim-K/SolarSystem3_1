//
//  MenuViewController.swift
//  SolarSystem2
//
//  Created by Даниил Никулин on 07.11.2020.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var aboutSystemButton: UIButton!
    @IBOutlet weak var minigamesButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userLabel.text = "Приветствую, \(name)!"
        aboutSystemButton.layer.cornerRadius = 10
        minigamesButton.layer.cornerRadius = 10
        exitButton.layer.cornerRadius = 10
        
    }

}
