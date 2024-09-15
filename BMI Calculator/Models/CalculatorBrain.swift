//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdal Shah on 09/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi: BMI?
    
    
    func getBmiValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    func getAdvice () -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
    
   mutating func calculateBMI (height: Float , weight: Float) {
      let bmiValue = weight / (height * height)
       
       if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
       }
       else if bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .blue)
       }
       else {
           bmi = BMI(value: bmiValue, advice: "Eat fewer pies !", color: .red)
       }
    }
}
