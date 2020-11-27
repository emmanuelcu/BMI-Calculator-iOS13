//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Emmanuel Cuevas on 26/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    let advices = ["Underweight", "Normal", "Overweight"]
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: advices[0], color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
            print(advices[0])
        }else if 18.5 ... 24.9 ~= bmiValue{
            bmi = BMI(value: bmiValue, advice: "Well Done", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
            print(advices[1])
        }else{
            bmi = BMI(value: bmiValue, advice: "Go Run some K's", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
            print(advices[2])
        }
        //        bmi = BMI(value: bmiValue, advice: bmiAdvice, color: bmiColor)
    }
    

    
}


