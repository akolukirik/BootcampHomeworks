//
//  ViperProtocols.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

protocol ViewToPresenterYapilacakIsKayitProtocol {
    var yapilacakIsKayitInteractor:PresenterToInteractorYapilacakIsKayitProtocol? { get set }

    func ekle(yapilacak_is: String)
}

protocol PresenterToInteractorYapilacakIsKayitProtocol {
    func yapilacakEkle(yapilacak_is: String)
}

protocol PresenterToRouterYapilacakIsProtocol {
    static func createModule(ref: KayitVC)
}
