//
//  ViewController.swift
//  ViewControllers
//
//  Created by leslie on 3/15/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ratingHusky: Int = 0
    var ratingHouse: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // Sending values to the Third View Controller before its view is load
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Storyboard Segue Identifier
        if segue.identifier == "showDog" {
            let controller = segue.destination as! ThirdViewController
            controller.rating = ratingHusky
        } else if segue.identifier == "showHouse" {
            let controller = segue.destination as! FourthViewController
            controller.rating = ratingHouse
        }
    }
    // Reading properties from the source via unwind segue function
    @IBAction func goBack(_ segue: UIStoryboardSegue) {
        // Storyboard Unwind Segue Identifier
        if segue.identifier == "removeHusky" {
            let controller = segue.source as! ThirdViewController
            ratingHusky = controller.rating
        } else if segue.identifier == "removeHouse" {
            let controller = segue.source as! FourthViewController
            ratingHouse = controller.rating
        }
    }
    
}

