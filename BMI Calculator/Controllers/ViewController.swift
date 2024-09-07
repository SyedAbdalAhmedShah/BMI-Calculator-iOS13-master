//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var weeight: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
      let formatedHeight = String(format: "%.2f", sender.value)
        height.text = formatedHeight + "m";
        
        
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
       let formatedWeight = Int(sender.value)
        weeight.text = String(formatedWeight) + "Kg"
        
    }
    
}

