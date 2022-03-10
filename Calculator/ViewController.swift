//
//  ViewController.swift
//  Calculator
//
//  Created by Артём Симан on 8.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    var tipedNumber: Double = 0
    var firstNumber: Double = 0
    var operation: Int = 0
    var action: Bool = false
   


    @IBOutlet weak var display: UITextField!
   
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func numbers(_ sender: UIButton) {
        if action == true {
            display.text = String(sender.tag)
            action = false
        } else {
            display.text = display.text! + String(sender.tag)
            
        }
        
        tipedNumber = Double(display.text!)!
    }
    
    
    @IBAction func actions(_ sender: UIButton) {
        if display.text != nil {

            firstNumber = Double(display.text!)!
        
        if operation == 10 {
            display.text = ""
        }
            if operation == 17 {
                operation = sender.tag
                action = true    }
        else if operation == 11 {
            display.text = String( firstNumber / tipedNumber)
        }
        else if operation == 12 {
            display.text = String( firstNumber * tipedNumber)
        }
        else if operation == 13 {
            display.text = String( firstNumber - tipedNumber)
        }
        else if operation == 14 {
            display.text = String( firstNumber + tipedNumber)
        }
        else if operation == 15 {
            display.text = String(tipedNumber / 100)
        }
        
 
    }
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        buttons.forEach { num in
            num.layer.cornerRadius = num.frame.height / 2 - 1}
    }
    
}
    
    





