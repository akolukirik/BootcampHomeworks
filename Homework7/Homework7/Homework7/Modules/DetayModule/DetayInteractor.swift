//
//  DetayInteractor.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class YapilacakDetayInteractor : PresenterToInteractorYapilacakDetayProtocol {

    let db:FMDatabase?

    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("Yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }

    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        db?.open()
        do {
            try db!.executeUpdate("UPDATE yapilacaklar SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [yapilacak_is,yapilacak_id])
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }
}
