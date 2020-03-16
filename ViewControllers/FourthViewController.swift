//
//  FourthViewController.swift
//  ViewControllers
//
//  Created by leslie on 3/16/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    var rating: Int = 0
    
    @IBOutlet weak var RatingHouseSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RatingHouseSlider.value = Float(rating)
        
    }
    
    @IBAction func changeRatingSlider(_ sender: UISlider) {
        let value = round(sender.value)
        RatingHouseSlider.value = value
        rating = Int(value)
    }
    
}
