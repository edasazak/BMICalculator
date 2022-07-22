import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(advice: "you should eat more", color: UIColor.cyan, value: bmiValue)
        } else if bmiValue < 24.9 {
            bmi = BMI(advice: "keep eating this way", color: UIColor.green, value: bmiValue)
        } else {
            bmi = BMI(advice: "you should eat less", color: UIColor.red, value: bmiValue)
        }
    }// calculate BMI in separate struct
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }//return BMI as a String
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }//return advice as a String
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }//return color
}
