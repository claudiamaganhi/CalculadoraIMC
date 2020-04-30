//
//  Calculator.swift
//  CalculadoraIMC
//
//  Created by Claudia Cavalini Maganhi on 29/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

struct Calculator {
    
    var imc: IMC?
    
    func getIMCValue() -> String {
        guard let imcValue = imc?.value else { return "" }
        return String(format: "%.1f", imcValue)
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? UIColor.darkGray
    }
    
    mutating func calculateIMC(_ height: Float, _ weight: Float) {
        let squaredHeight = height *  height
        let imcValue = weight / squaredHeight
        
        if imcValue < 18.5 {
            imc = IMC(value: imcValue, advice: "Você está abaixo do peso!", color: #colorLiteral(red: 0, green: 0.6588235294, blue: 0.8, alpha: 1))
        } else if imcValue < 24.9 {
            imc = IMC(value: imcValue, advice: "Você está saudável!", color: #colorLiteral(red: 0.4039215686, green: 0.6078431373, blue: 0.6078431373, alpha: 1))
        } else {
            imc = IMC(value: imcValue, advice: "Você está sobrepeso!", color: #colorLiteral(red: 0.8431372549, green: 0.2196078431, blue: 0.368627451, alpha: 1))
        }
    }
    
}
