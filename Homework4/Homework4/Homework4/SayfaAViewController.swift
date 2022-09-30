//
//  SayfaAVC.swift
//  Homework4
//
//  Created by Ali Kolukirik on 30.09.2022.
//

import UIKit

class SayfaAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func navigatePageBButton(_ sender: Any) {
        performSegue(withIdentifier: "toPageB", sender: nil)
    }

}
