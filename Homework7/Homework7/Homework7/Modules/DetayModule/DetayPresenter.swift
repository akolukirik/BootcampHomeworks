//
//  DetayPresenter.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class YapilacakDetayPresenter : ViewToPresenterYapilacakDetayProtocol {

    var yapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?

    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        yapilacakDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }

}
