//
//  ViewController.swift
//  Homework6
//
//  Created by Ali Kolukirik on 7.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var kesfetButton: UIButton!
    @IBOutlet var erkekButton: UIButton!
    @IBOutlet var kadinButton: UIButton!
    @IBOutlet var cocukButton: UIButton!
    @IBOutlet var elektronikButton: UIView!
    @IBOutlet var evButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()

        let apperance = UITabBarAppearance()

        renkDegistir(itemApperance: apperance.stackedLayoutAppearance)
        renkDegistir(itemApperance: apperance.inlineLayoutAppearance)
        renkDegistir(itemApperance: apperance.compactInlineLayoutAppearance)

        tabBarController?.tabBar.standardAppearance = apperance
        tabBarController?.tabBar.scrollEdgeAppearance = apperance

    }

    func renkDegistir(itemApperance: UITabBarItemAppearance) {
        // Seçili durum
        itemApperance.selected.iconColor = UIColor.systemOrange
        itemApperance.selected.titleTextAttributes = [.foregroundColor : UIColor.systemOrange]
        itemApperance.selected.badgeBackgroundColor = UIColor.systemOrange

        // Seçili olmadığı durum
        itemApperance.normal.iconColor = UIColor.black
        itemApperance.normal.titleTextAttributes = [.foregroundColor : UIColor.black]
        itemApperance.normal.badgeBackgroundColor = UIColor.black
    }


    func configure() {
        searchBar.searchTextField.leftView?.tintColor = .orange

        kesfetButton.layer.borderWidth = 2
        kesfetButton.layer.borderColor = UIColor.lightGray.cgColor
        kesfetButton.layer.cornerRadius = 5
        
        erkekButton.layer.cornerRadius = 15
        erkekButton.titleLabel?.textColor = .white
        erkekButton.backgroundColor = .orange

        kadinButton.layer.borderWidth = 2
        kadinButton.layer.borderColor = UIColor.gray.cgColor
        kadinButton.layer.borderColor = UIColor.lightGray.cgColor
        kadinButton.layer.cornerRadius = 15

        cocukButton.layer.borderWidth = 2
        cocukButton.layer.borderColor = UIColor.gray.cgColor
        cocukButton.layer.borderColor = UIColor.lightGray.cgColor
        cocukButton.layer.cornerRadius = 15

        elektronikButton.layer.borderWidth = 2
        elektronikButton.layer.borderColor = UIColor.gray.cgColor
        elektronikButton.layer.borderColor = UIColor.lightGray.cgColor
        elektronikButton.layer.cornerRadius = 15

        evButton.layer.borderWidth = 2
        evButton.layer.borderColor = UIColor.gray.cgColor
        evButton.layer.borderColor = UIColor.lightGray.cgColor
        evButton.layer.cornerRadius = 15

    }

}
