//
//  ViewController.swift
//  ShikamiC_Assignment3
//
//  Created by Christopher Shikami on 1/23/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class Stack {
    var stackArray = [String]()
    
    func push(stringToPush: String) {
        self.stackArray.append(stringToPush)
    }
    
    func pop() -> String? {
        if self.stackArray.last != nil {
            let stringToReturn = self.stackArray.popLast()
            return stringToReturn
        }
        else {
            return nil
        }
    }
}

class ViewController: UIViewController {
    
    var myStack = Stack()
    //var firstNumberQueue = Queue()
    
    var typingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    let minValue = Int32.min
    let maxValue = Int32.max
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    @IBAction func numberPressed(_ sender: UIButton) {
        let number = sender.currentTitle
        
        if typingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!
        } else {
            calculatorDisplay.text = number
            typingNumber = true
        }
    }
    
    @IBAction func addPressed(_ sender: UIButton) {
        typingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        
        //add "+" to myStack
        myStack.push(stringToPush: "+")
    }
    
    @IBAction func subtractPressed(_ sender: UIButton) {
        typingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        //add "-" to myStack
        myStack.push(stringToPush: "-")
    }
    
    @IBAction func multiplyPressed(_ sender: UIButton) {
        typingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        //add "*" to myStack
        myStack.push(stringToPush: "*")
    }
    
    @IBAction func dividePressed(_ sender: UIButton) {
        typingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        myStack.push(stringToPush: "/")
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        typingNumber = false
        var sum = 0
        var difference = 0
        var product = 1
        var quotient = 1
        var mySign = "+"
        
        secondNumber = Int(calculatorDisplay.text!)!
        
        //if sum < minValue || sum > maxValue {
        // calculatorDisplay.text = "NaN"
        
        
        
        //pop last sign from stack
        mySign = myStack.pop()!
        
        //work on implementing either switch statements for different signs or hashtable in a separate struct at the top
        switch mySign {
            case "+":
            sum = firstNumber + secondNumber
            calculatorDisplay.text = "\(sum)"
        case "-":
            difference = firstNumber - secondNumber
            calculatorDisplay.text = "\(difference)"
        case "*":
            product = firstNumber * secondNumber
            calculatorDisplay.text = "\(product)"
        case "/":
            quotient = firstNumber / secondNumber
            calculatorDisplay.text = "\(quotient)"
            
        default:
            Int(calculatorDisplay.text!)!
            //calculatorDisplay.text = "0"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

