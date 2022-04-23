//
//  ViewController.swift
//  RCalcuklate
//
//  Created by Rumeysa TAN on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var number1 : Int!
    var number2 : Int!
    var final : Int!
    var pOperator = "+"
    
    @IBOutlet weak var display: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func pressZero(_ sender: UIButton) {
        display.text = display.text! + "0"
    }
    
    @IBAction func pressOne(_ sender: UIButton) {
        display.text = display.text! + "1"
    }
    
    @IBAction func preeTwo(_ sender: UIButton) {
        display.text = display.text! + "2"
    }
    
    @IBAction func pressTree(_ sender: UIButton) {
        display.text = display.text! + "3"
    }
    
    @IBAction func pressFour(_ sender: UIButton) {
        display.text = display.text! + "4"
    }
    
    @IBAction func pressFive(_ sender: UIButton) {
        display.text = display.text! + "5"
    }
    
    @IBAction func pressSix(_ sender: UIButton) {
        display.text = display.text! + "6"
    }
    
    @IBAction func pressSeven(_ sender: UIButton) {
        display.text = display.text! + "7"
    }
    
    @IBAction func pressEight(_ sender: UIButton) {
        display.text = display.text! + "8"
    }
    
    @IBAction func pressNine(_ sender: UIButton) {
        display.text = display.text! + "9"
    }
    
    @IBAction func sum(_ sender: Any) {
        pOperator = "+"
        number1 = Int(display.text!)!
        clearText()
    }
    
    @IBAction func clear(_ sender: Any) {
        clearText()
    }
    @IBAction func result(_ sender: Any) {
        number2 = Int(display.text!)!
        final = number1 + number2
        display.text = String(final)
    }
    
    func clearText(){
        display.text = ""
    }
    
    
//    not supported yet;
    
    @IBAction func deleteDigit(_ sender: Any) {
        let alert = UIAlertController(title: "Unsupported", message: "This feature not development yet.", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }
    
    @IBAction func commaDouble(_ sender: Any) {
        let alert = UIAlertController(title: "Unsupported", message: "This feature not development yet.", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }
    
}



