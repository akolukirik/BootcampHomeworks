//
//  ViewController.swift
//  Homework5
//
//  Created by Ali Kolukirik on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var currentValueLabel: UILabel!

    var currentValue : String = ""
    var totalValue : Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCalculator()
    }

    func configureCalculator() {
        totalValue = 0.0
        currentValue = ""
        resultLabel.text = ""
        currentValueLabel.text = ""
    }

    @IBAction func allClearButton(_ sender: Any) {
        configureCalculator()
    }

    @IBAction func plusButton(_ sender: Any) {
        totalValue += Float(currentValue) ?? 0.0
        resultLabel.text = String(format: "%.2f", totalValue)
        currentValueLabel.text = ""
        currentValue = ""
    }

    @IBAction func equalsButton(_ sender: Any) {
        totalValue += Float(currentValue)!
        resultLabel.text = String(format: "%.2f", totalValue)
        currentValueLabel.text = ""
        currentValue = ""
    }

    @IBAction func zeroButton(_ sender: Any) {
        currentValue += "0"
        currentValueLabel.text = currentValue
    }


    @IBAction func oneButton(_ sender: Any) {
        currentValue += "1"
        currentValueLabel.text = currentValue
    }

    @IBAction func twoButton(_ sender: Any) {
        currentValue += "2"
        currentValueLabel.text = currentValue
    }

    @IBAction func threeButton(_ sender: Any) {
        currentValue += "3"
        currentValueLabel.text = currentValue
    }

    @IBAction func fourButton(_ sender: Any) {
        currentValue += "4"
        currentValueLabel.text = currentValue
    }

    @IBAction func fivebutton(_ sender: Any) {
        currentValue += "5"
        currentValueLabel.text = currentValue
    }

    @IBAction func sixButton(_ sender: Any) {
        currentValue += "6"
        currentValueLabel.text = currentValue
    }

    @IBAction func sevenButton(_ sender: Any) {
        currentValue += "7"
        currentValueLabel.text = currentValue
    }

    @IBAction func eightButton(_ sender: Any) {
        currentValue += "8"
        currentValueLabel.text = currentValue
    }

    @IBAction func nineButton(_ sender: Any) {
        currentValue += "9"
        currentValueLabel.text = currentValue
    }

    @IBAction func dotButton(_ sender: Any) {
        currentValue += "."
        currentValueLabel.text = currentValue
    }

}
