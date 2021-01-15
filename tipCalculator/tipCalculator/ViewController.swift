//
//  ViewController.swift
//  tipCalculator
//
//  Created by Jiseon Yu on 1/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(false)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text! ) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    func clear(){
        billField.text = nil
        tipControl.selectedSegmentIndex = 0
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        clear()
    }
}

