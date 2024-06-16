//
//  Calculator.swift
//  mlnDollarsCalculator
//
//  Created by Jaxyk on 16.06.24.
//

import Foundation

final class Calculator {
    
    var display: String = ""
    var storedNumber: Double?
    var operation: Calculator.Operation? {
        didSet {
            guard let operation, let currentNumber = Double(display) else { return }
            storedNumber = currentNumber
            display += " \(operation.rawValue) "
        }
    }
    
    func calculateResult() -> Double? {
        defer {
            display = " "
            storedNumber = nil
            operation = nil
        }
        
        guard let stored = storedNumber, let currentExpression = display.components(separatedBy: " ").last, let current = Double(currentExpression) else {
            return nil
        }
        
        switch operation {
        case .add:
            return stored + current
        case .subtract:
            return stored - current
        case .multiply:
            return stored * current
        case .divide:
            return stored / current
        case nil:
            return nil
        }
    }
}

extension Calculator {
    
    enum Operation: String {
        case add = "+"
        case subtract = "-"
        case multiply = "*"
        case divide = "/"
    }
}
