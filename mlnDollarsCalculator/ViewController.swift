//
//  ViewController.swift
//  mlnDollarsCalculator
//
//  Created by Jaxyk on 16.06.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculationsLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    private let calculator = Calculator()
    
    @IBAction func press0(_ sender: UIButton) {
        calculator.display += "0"
        calculationsLabel.text = calculator.display
    }
    
    @IBAction func pressDot(_ sender: UIButton) {
//        TODO: -
        calculator.display += "."
        calculationsLabel.text = calculator.display
    }
    @IBAction func press1(_ sender: UIButton) {
        calculator.display += "1"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press2(_ sender: UIButton) {
        calculator.display += "2"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press3(_ sender: UIButton) {
        calculator.display += "3"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press4(_ sender: UIButton) {
        calculator.display += "4"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press5(_ sender: UIButton) {
        calculator.display += "5"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press6(_ sender: UIButton) {
        calculator.display += "6"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press7(_ sender: UIButton) {
        calculator.display += "7"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press8(_ sender: UIButton) {
        calculator.display += "8"
        calculationsLabel.text = calculator.display
    }
    @IBAction func press9(_ sender: UIButton) {
        calculator.display += "9"
        calculationsLabel.text = calculator.display
    }
    
    @IBAction func multOp(_ sender: UIButton) {
//        op = "*"
//        calculationsLabel.text!.append(op)
//        num1 = Double(calculationsLabel.text!)
//        newOp = true
        calculator.operation = .multiply
        calculationsLabel.text = calculator.display
    }
    
    @IBAction func divOp(_ sender: UIButton) {
        calculator.operation = .divide
        calculationsLabel.text = calculator.display
    }
    
    @IBAction func plusOp(_ sender: UIButton) {
        calculator.operation = .add
        calculationsLabel.text = calculator.display
    }
    
    @IBAction func minusOp(_ sender: UIButton) {
        calculator.operation = .subtract
        calculationsLabel.text = calculator.display
    }
    @IBAction func cleanOp(_ sender: UIButton) {
        calculator.display = ""
        calculationsLabel.text = " "
        resultLabel.text = "0"
        calculator.storedNumber = nil
    }
    
        @IBAction func plOnMinOp(_ sender: UIButton) {
//            var textNum = String(calculationsLabel.text!)
//            textNum = "-" + textNum
//            calculationsLabel.text = textNum
     }
    
    @IBAction func procOp(_ sender: Any) {
//        var num1 = Double(resultLabel.text!)
//        num1 = num1!/100
//        resultLabel.text = String(num1!)
//        newOp = true
    }
    
    @IBAction func equalOp(_ sender: Any) {
        calculationsLabel.text = calculator.display
        if let result = calculator.calculateResult() {
            resultLabel.text = String(result)
        }
//        guard let num1 else { return }
//        let num2 = Double(resultLabel.text!)!
//        var result = 0.0
//        switch op {
//            case "*":
//            result = num1 * num2
//            case "/":
//            if num2 == 0.0 {
//                calculationsLabel.text = "Ошибка"
//                newOp = true
//                return
//            }
//            result = num1 / num2
//            case "-":
//            result = num1 - num2
//            case "+":
//            result = num1 + num2
//        default:
//            preconditionFailure("Unknown operation")
//        }
//        resultLabel.text = String(result)
//        newOp = true
    }
}
