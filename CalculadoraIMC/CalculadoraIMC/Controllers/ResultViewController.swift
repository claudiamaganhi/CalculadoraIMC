//
//  ResultViewController.swift
//  CalculadoraIMC
//
//  Created by Claudia Cavalini Maganhi on 29/04/20.
//  Copyright © 2020 Claudia Cavalini Maganhi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var imc: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Seu IMC é \(imc)"

    }
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
