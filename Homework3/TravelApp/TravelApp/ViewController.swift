//
//  ViewController.swift
//  TravelApp
//
//  Created by Ali Kolukirik on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Travel Turkey"

        let apperance = UINavigationBarAppearance()

        apperance.backgroundColor = UIColor(named: "mainColor")
        apperance.titleTextAttributes = [.foregroundColor: UIColor(named: "fontColor1")!, NSAttributedString.Key.font: UIFont(name: "Comfortaa",size: 25)!]

        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.compactAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance
    }
}
