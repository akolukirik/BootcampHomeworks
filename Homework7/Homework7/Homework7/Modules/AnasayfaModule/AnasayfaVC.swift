//
//  ViewController.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var yapilacaklarTableView: UITableView!

    var yapilacaklarListe = [Yapilacaklar]()

    var anasayfaPresenterNesnesi : ViewToPresenterAnasayfaProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        yapilacaklarTableView.delegate = self
        yapilacaklarTableView.dataSource = self

        AnasayfaRouter.createModule(ref: self)

        veritabaniKopyala()
    }

    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.yapilacaklariYukle()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let yapilacak = sender as? Yapilacaklar
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.yapilacak = yapilacak
        }
    }

    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "Yapilacaklar", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("Yapilacaklar.sqlite")
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("Veritabanı zaten var")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
    }

}


extension AnasayfaVC: PresenterToViewAnsayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi: [Yapilacaklar]) {
        self.yapilacaklarListe = yapilacaklarListesi
        self.yapilacaklarTableView.reloadData()
    }
}


extension AnasayfaVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
    }

}

extension AnasayfaVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yapilacaklarListe.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yapilacak = yapilacaklarListe[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "yapilacaklarCell" , for: indexPath) as! YapilacaklarTableViewCell

        hucre.yapilacaklarLabel.text = "\(yapilacak.yapilacak_is ?? "booş")"

        return hucre
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let yapilacak = yapilacaklarListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: yapilacak)
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {

        let silAction = UIContextualAction(style: .destructive, title: "Sil") {(contextualAction, view, bool) in
            let yapilacak = self.yapilacaklarListe[indexPath.row]

            let alert = UIAlertController(title: "Silme İşlemi", message: "\(yapilacak.yapilacak_is!) silinsin mi?", preferredStyle: .alert)

            let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in }
            alert.addAction(iptalAction)

            let evetAction = UIAlertAction(title: "Evet", style: .destructive) { action in
                self.anasayfaPresenterNesnesi?.sil(yapilacak_id: yapilacak.yapilacak_id ?? 0)
                // self.kisilerListe.remove(at: indexPath.row)
                tableView.reloadData()

            }
            alert.addAction(evetAction)

            self.present(alert, animated: true)

        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
}

