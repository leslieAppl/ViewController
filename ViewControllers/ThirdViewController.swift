//
//  ThirdViewController.swift
//  ViewControllers
//
//  Created by leslie on 3/15/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var rating: Int = 0
    
    @IBOutlet weak var RatingSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the reting value on the RatingSlider from source VC when init this view
        RatingSlider.value = Float(rating)
        
    }
    
    @IBAction func ChangeRatingSlider(_ sender: UISlider) {
        
        let value = round(sender.value)
        RatingSlider.value = value
        rating = Int(value)
    }
    
    
}
