//
//  ViewController.swift
//  CalculatorBMI
//
//  Created by YJ on 2022/01/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var heightInput: UITextField!
    @IBOutlet var weightInput: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBmiPressed(_ sender: UIButton) {
        guard let h = heightInput.text, let w = weightInput.text, !h.isEmpty, !w.isEmpty else {
            resultLabel.text = "키와 몸무게 모두 입력해 주세요!"
            return
        }
        
        self.view.endEditing(true)

        let userHeight = Double(h)!
        let userWeight = Double(w)!

        let userBMI = BMIManager(weight: userWeight, height: userHeight)
        resultLabel.text = userBMI.calcBMI()
    }


}

