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
        let popUpVC = UIStoryboard(name: "StoryboardDanya", bundle: nil).instantiateViewController(withIdentifier: "popUp") as! PopUpRegistrationViewController
        
        self.addChild(popUpVC)
        popUpVC.view.frame = self.view.frame
        self.view.addSubview(popUpVC.view)
        
        popUpVC.didMove(toParent: self) 
    }
}
