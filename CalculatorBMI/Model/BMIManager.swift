//
//  BMIManager.swift
//  CalculatorBMI
//
//  Created by YJ on 2022/01/26.
//

import Foundation

struct BMIManager {
    var weight: Double
    var height: Double
    
    func calcBMI() -> String {
        let bmi = weight / (height * height * 0.0001)
        var str = ""
        
        switch bmi {
        case ..<18.5:
            str = "저체중"
        case 18.5..<25:
            str = "정상"
        case 25..<30:
            str = "1단계 비만"
        case 30..<40:
            str = "2단계 비만"
        default:
            str = "3단계 비만"
        }
        
        let shortenedBmi = String(format: "%.1f", bmi)
        
        return "BMI: \(shortenedBmi), 판정: \(str)"
    }
}
