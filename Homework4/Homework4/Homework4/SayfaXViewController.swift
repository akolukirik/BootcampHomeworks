//
//  SayfaXViewController.swift
//  Homework4
//
//  Created by Ali Kolukirik on 30.09.2022.
//

import UIKit

class SayfaXViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func navigatePageYButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageY", sender: nil)
    }

}
