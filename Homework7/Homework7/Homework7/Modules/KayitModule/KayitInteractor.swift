//
//  KayitInteractor.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class KisiKayitInteractor : PresenterToInteractorYapilacakIsKayitProtocol {

    let db:FMDatabase?

    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("Yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }

    func yapilacakEkle(yapilacak_is: String) {
        db?.open()
        do {
            try db!.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?)", values: [yapilacak_is])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
}
