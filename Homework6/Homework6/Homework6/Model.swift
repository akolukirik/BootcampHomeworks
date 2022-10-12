//
//  File.swift
//  Homework6
//
//  Created by Ali Kolukirik on 13.10.2022.
//

import Foundation

class UrunModel {

    var urunAd: String?
    var urunResimAdi: String?
    var urunFiyat: String?

    init(urunAd: String, urunResimAdi: String, urunFiyat: String) {
        self.urunAd = urunAd
        self.urunResimAdi = urunResimAdi
        self.urunFiyat = urunFiyat
    }

}
