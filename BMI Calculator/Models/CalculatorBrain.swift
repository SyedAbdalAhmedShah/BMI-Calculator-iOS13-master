//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdal Shah on 09/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    var bmi: Float = 0.0
    
    
    func getBmiValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
   mutating func calculateBMI (height: Float , weight: Float) {
        self.bmi = weight / (height * height)
    }
}
