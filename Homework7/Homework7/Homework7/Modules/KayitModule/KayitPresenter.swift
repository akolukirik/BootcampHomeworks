//
//  KayitPresenter.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class KisiKayitPresenter : ViewToPresenterYapilacakIsKayitProtocol {

    var yapilacakIsKayitInteractor: PresenterToInteractorYapilacakIsKayitProtocol?

    func ekle(yapilacak_is: String) {
        yapilacakIsKayitInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
}
