//
//  ViewController.swift
//  PreWork_2
//
//  Created by David Teran on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount from the text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get the total tip first
        let tipPercentages = [0.10, 0.15, 0.2, 0.25]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //Get the number of people splitting the bill
        let split = Double(splitTextField.text!) ?? 0
        
        //Get the total for each person
        let total = (bill + tip) / split
        
        //Update tip amount label
        TipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update total amount label
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

