//
//  AboutPlanetViewController.swift
//  SolarSystem3
//
//  Created by Vladislav on 08.11.2020.
//

import UIKit

class AboutPlanetViewController: UIViewController {

    @IBOutlet weak var planetImageView: UIImageView!

    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetMassLabel: UILabel!
    @IBOutlet weak var planetRadiusLabel: UILabel!
    @IBOutlet weak var distanceToSunLabel: UILabel!
    @IBOutlet weak var numberOfSatellitesLabel: UILabel!
    
    var planets: [Planet]!
    var pushButtonPlanet: Int!
    var chosePlanet: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        howPlanetChoose()
        planetInfo()
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    private func howPlanetChoose() {
        switch pushButtonPlanet {
        case 0: chosePlanet = "Меркурий"
        case 1: chosePlanet = "Венера"
        case 2: chosePlanet = "Земля"
        case 3: chosePlanet = "Юпитер"
        case 4: chosePlanet = "Марс"
        case 5: chosePlanet = "Сатурн"
        case 6: chosePlanet = "Уран"
        default:chosePlanet = "Нептун"
        }
        
    }
    
    private func planetInfo() {
        for planet in planets {
            if planet.name == chosePlanet {
                planetImageView.image = UIImage(named: planet.name)
                planetNameLabel.text = "\(planet.name)"
                planetMassLabel.text = "Масса: \(planet.mass)"
                planetRadiusLabel.text = "Радиус: \(planet.radius)"
                distanceToSunLabel.text = "Дистанция до солнца: \(planet.distanceToSun)"
                numberOfSatellitesLabel.text = "Количество спутников: \(planet.numberOfSatellite)"
            }
        }
        
    }
    
}
