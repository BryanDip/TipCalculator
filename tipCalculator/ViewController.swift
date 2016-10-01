//
//  ViewController.swift
//  tipCalculator
//
//  Created by Bayan on 6/24/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalWithTipLabel: UILabel!

    var tipValue: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func implicitlyConvertButtonTapped(_ sender: UIButton) {
        
        billTextField.resignFirstResponder()
    
        
        let total = Double(billTextField.text!)
        
        tipValue = total! * 0.15
        
        if let unwrappedTotal = total {
            if let tipValueToUse = tipValue {
                tipLabel.text = "\(tipValueToUse)"
                let amountToPay = unwrappedTotal + tipValueToUse
                totalWithTipLabel.text = "\(amountToPay)"
            }
            else {
                tipLabel.text = "Tip is nil"
                totalWithTipLabel.text = "\(unwrappedTotal)"
            }
        }
        else {
            print("Optional was nil!")
        }
    }
        
        
        
}

