//
//  SayfaYViewController.swift
//  Homework4
//
//  Created by Ali Kolukirik on 30.09.2022.
//

import UIKit

class SayfaYViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func navigateHomePageButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
