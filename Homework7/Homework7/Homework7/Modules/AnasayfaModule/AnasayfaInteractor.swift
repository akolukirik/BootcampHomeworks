//
//  AnasayfaInteractor.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?

    let db:FMDatabase?

    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("Yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }

    func kisiAra(aramaKelimesi: String) {
        db?.open()
        var liste = [Yapilacaklar]()

        do{
            let rs = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)

            while rs.next() {
                let kisi = Yapilacaklar(yapilacak_id: Int(rs.string(forColumn: "yapilacaklar_id"))!, yapilacak_is: rs.string(forColumn: "yapilacaklar_is")!)
                liste.append(kisi)
            }

            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription)
        }

        db?.close()    }

    func kisiSil(yapilacak_id: Int) {
        db?.open()
        do{
            try db!.executeUpdate("DELETE FROM yapilacaklar WHERE yapilacaklar_id = ?", values: [yapilacak_id])
            yapilacaklariAl()
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }

    func yapilacaklariAl() {
        db?.open()
        var liste = [Yapilacaklar]()

        do{
            let rs = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)

            while rs.next() {
                let kisi = Yapilacaklar(yapilacak_id: Int(rs.string(forColumn: "yapilacaklar_id") ?? ""), yapilacak_is: rs.string(forColumn: "yapilacaklar_is"))
                liste.append(kisi)
            }

            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription)
        }

        db?.close()
    }
}
