//
//  ViewController.swift
//  Homework4
//
//  Created by Ali Kolukirik on 30.09.2022.
//

import UIKit

class AnasayfaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func navigatePageAButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageA", sender: nil)
    }

    @IBAction func navigatePageXButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageX", sender: nil)
    }

}
