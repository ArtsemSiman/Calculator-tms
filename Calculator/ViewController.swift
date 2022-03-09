//
//  ViewController.swift
//  Calculator
//
//  Created by Артём Симан on 8.03.22.
//

import UIKit

class ViewController: UIViewController {
   


    @IBOutlet weak var display: UITextField!
   
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func numbers(_ sender: UIButton) {
        display.text = display.text! + String(sender.tag)
        
    }
    
    @IBAction func actions(_ sender: UIButton) {
        if sender.tag == 10 {
            display.text = ""
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
    
    





