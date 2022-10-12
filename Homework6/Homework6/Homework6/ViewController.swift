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

    @IBOutlet var urunlerCollecitonView: UICollectionView!

    var urunlerlistesi = [UrunModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        urunlerCollecitonView.delegate = self
        urunlerCollecitonView.dataSource = self

        configure()
        fillList()
        collectionViewLayout()
        apperance()
    }

    func apperance() {
        let apperance = UITabBarAppearance()

        renkDegistir(itemApperance: apperance.stackedLayoutAppearance)
        renkDegistir(itemApperance: apperance.inlineLayoutAppearance)
        renkDegistir(itemApperance: apperance.compactInlineLayoutAppearance)

        tabBarController?.tabBar.standardAppearance = apperance
        tabBarController?.tabBar.scrollEdgeAppearance = apperance
    }

    func fillList() {
        let u1 = UrunModel(urunAd: "iPhone 11 ", urunResimAdi: "33", urunFiyat: "17999 TL")
        let u2 = UrunModel(urunAd: "Macbook Pro", urunResimAdi: "34", urunFiyat: "34569 TL")
        let u3 = UrunModel(urunAd: "Airpods 2. Nesil", urunResimAdi: "35", urunFiyat: "2789 TL")
        let u4 = UrunModel(urunAd: "Nort Face T-shirt", urunResimAdi: "36", urunFiyat: "450 TL")
        let u5 = UrunModel(urunAd: "Baby Yoda Model", urunResimAdi: "37", urunFiyat: "1750 TL")

        urunlerlistesi.append(u1)
        urunlerlistesi.append(u2)
        urunlerlistesi.append(u3)
        urunlerlistesi.append(u4)
        urunlerlistesi.append(u5)
    }

    func collectionViewLayout() {
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        tasarim.minimumLineSpacing = 5
        tasarim.minimumInteritemSpacing = 5
        tasarim.scrollDirection = .horizontal

        let ekranGenisligi = UIScreen.main.bounds.width / 2.8
        let hucreGenisligi = UIScreen.main.bounds.height / 3.75

        tasarim.itemSize = CGSize(width: ekranGenisligi, height: hucreGenisligi )

        urunlerCollecitonView.collectionViewLayout = tasarim
    }

    func renkDegistir(itemApperance: UITabBarItemAppearance) {

        itemApperance.selected.iconColor = UIColor.systemOrange
        itemApperance.selected.titleTextAttributes = [.foregroundColor : UIColor.systemOrange]
        itemApperance.selected.badgeBackgroundColor = UIColor.systemOrange

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

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerlistesi.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let urunler = urunlerlistesi[indexPath.row]
        let cell = urunlerCollecitonView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! CustomCollectionViewCell

        cell.imageView.image = UIImage(named: urunler.urunResimAdi!)
        cell.descriptionLabel.text = urunler.urunAd
        cell.priceLabel.text = urunler.urunFiyat

        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3

        return cell
    }

}
