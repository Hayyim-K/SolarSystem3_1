//
//  RegistrationViewController.swift
//  SolarSystem2
//
//  Created by Даниил Никулин on 08.11.2020.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var showButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func showPopUp(_ sender: UIButton) {
        let popUpVC = UIStoryboard(name: "StoryboardDanya", bundle: nil).instantiateViewController(withIdentifier: "popUp") as! PopUpRegistrationViewController // 1
        
        self.addChild(popUpVC) // 2
        popUpVC.view.frame = self.view.frame  // 3
        self.view.addSubview(popUpVC.view) // 4
        
        popUpVC.didMove(toParent: self) // 5
    }
}
