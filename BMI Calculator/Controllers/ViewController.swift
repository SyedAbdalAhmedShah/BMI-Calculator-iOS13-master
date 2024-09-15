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
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
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
    
    @IBAction func onCalculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value;
        let height = heightSlider.value;
        
        let bmi = weight / (height * height)
       calculatorBrain.calculateBMI(height: height, weight: weight)
      
     
        self.performSegue(withIdentifier: "goToResult", sender: self)
     
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = calculatorBrain.getBmiValue()
            resultVC.advice = calculatorBrain
                .getAdvice()
            resultVC.color = calculatorBrain.getColor()

        }
    }
}

