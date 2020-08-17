//
//  ViewController.swift
//  MyTipApp
//
//  Created by Diego Castro on 8/17/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get Bill Amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip/total
        let tipPercentages = [0.1, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total =  bill + tip
        
        //Update the tip and total
        tipLabel.text = String(format: "$%f.2",tip)
        totalLabel.text = String(format: "$%f.2",total)
        
    }
}

