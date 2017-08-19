//
//  ViewController.swift
//  ShikamiC_Assignment3
//
//  Created by Christopher Shikami on 1/23/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        typingNumber = false
        var sum = 0
        
        secondNumber = Int(calculatorDisplay.text!)!
        sum = firstNumber &+ secondNumber
        //if sum < minValue || sum > maxValue {
          // calculatorDisplay.text = "NaN"
            
        //} else {
        
            calculatorDisplay.text = "\(sum)"
            
        //}
        
        
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

