//
//  DataManager.swift
//  SolarSystem3
//
//  Created by vitasiy on 08.11.2020.
//

import UIKit

class DataManager {
    
    let names: [String] = [
        "Меркурий",
        "Венера",
        "Земля",
        "Марс",
        "Юпитер",
        "Сатурн",
        "Уран",
        "Нептун"
    ]
    
    let mass: [Double] = [
        0.055,
        0.815,
        1.0,
        0,53,
        11.2,
        9.4,
        4.0,
        3.9
    ]
    
    let radius: [Double] = [
        0.38,
        0.95,
        1,
        0.107,
        318,
        95.2,
        14.5,
        17.2
    ]
    
    let distanceToSun: [Double] = [
        0.4,
        0.7,
        1,
        1.5,
        5.2,
        9.6,
        19.2,
        30.0
    ]
    
    let numberOfSatellite: [Int] = [
        0,
        0,
        1,
        2,
        63,
        56,
        26,
        13
    ]
}

