//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Claudia Cavalini Maganhi on 28/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let formattedHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(formattedHeight) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let formattedWeight = String(format: "%.0f", sender.value)
         weightLabel.text = "\(formattedWeight) kgs"
    }
    
    @IBAction func calculateIMC(_ sender: UIButton) {
        let squaredHeight = heightSlider.value *  heightSlider.value
        let imc = weightSlider.value / squaredHeight
        guard let resultViewController = storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else { return }
        resultViewController.imc = String(format: "%.1f", imc)
        present(resultViewController, animated: true, completion: nil)
    }
    
}

