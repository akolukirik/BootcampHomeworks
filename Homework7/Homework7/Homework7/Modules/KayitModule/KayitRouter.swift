//
//  ViperRouter.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class YapilacakIsKayitRouter : PresenterToRouterYapilacakIsProtocol {
    static func createModule(ref: KayitVC) {
        ref.yapilacakIsKayitPresenterNesnesi = KisiKayitPresenter()
        ref.yapilacakIsKayitPresenterNesnesi?.yapilacakIsKayitInteractor = KisiKayitInteractor()
    }
}
