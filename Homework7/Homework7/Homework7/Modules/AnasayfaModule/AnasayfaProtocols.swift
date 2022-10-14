//
//  AnasayfaProtocols.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol? { get set }
    var anasayfaView: PresenterToViewAnsayfaProtocol? { get set }

    func yapilacaklariYukle()
    func ara(aramaKelimesi: String)
    func sil(yapilacak_id: Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol? { get set }

    func yapilacaklariAl()
    func kisiAra(aramaKelimesi: String)
    func kisiSil(yapilacak_id: Int)
}

protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi: [Yapilacaklar])
}

protocol PresenterToViewAnsayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi: [Yapilacaklar])
}

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref: AnasayfaVC)
}
