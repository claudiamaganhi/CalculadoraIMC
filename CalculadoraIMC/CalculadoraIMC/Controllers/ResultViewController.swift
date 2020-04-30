//
//  ResultViewController.swift
//  CalculadoraIMC
//
//  Created by Claudia Cavalini Maganhi on 29/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var imcValue: String?
    var advice: String?
    var color: UIColor?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = imcValue
        adviceLabel.text = advice
        resultLabel.textColor = color
        adviceLabel.textColor = color
    }
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
