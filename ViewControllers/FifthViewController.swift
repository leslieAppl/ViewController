//
//  FifthViewController.swift
//  ViewControllers
//
//  Created by leslie on 3/16/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    var rating: Int = 0
    var picture: String!
    
    @IBOutlet weak var ratingSlider: UISlider!
    @IBOutlet weak var pictureView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ratingSlider.value = Float(rating)
        pictureView.image = UIImage(named: picture.lowercased())
        
    }
    
    @IBAction func chageRating(_ sender: UISlider) {
        let value = round(ratingSlider.value)
        ratingSlider.value = value
        rating = Int(value)
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "goBack", sender: self)
    }
    
}
