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
    
    var pictureList: [String]!
    var ratings: [Int]!
    var selectedPictuer: Int!
    
    @IBOutlet weak var picturePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // init picker view
        picturePicker.dataSource = self
        picturePicker.delegate = self
        
        // init data
        pictureList = ["Husky", "Door"]
        ratings = [0, 0]
        selectedPictuer = 0
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
        } else if segue.identifier == "showPicture" {
            let controller = segue.destination as! FifthViewController
            controller.rating = ratings[selectedPictuer]
            controller.picture = pictureList[selectedPictuer]
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
        } else if segue.identifier == "goBack" {
            let controller = segue.source as! FifthViewController
            ratings[selectedPictuer] = controller.rating
        }
    }
    
    @IBAction func getPictureBtnPressed(_ sender: UIButton) {
        selectedPictuer = picturePicker.selectedRow(inComponent: 0)
        performSegue(withIdentifier: "showPicture", sender: self)
    }
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    //MARK: - Picker Data Source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pictureList.count
    }
    
    //MARK: - Picker Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pictureList[row]
    }
}
