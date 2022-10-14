//
//  DetayRouter.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation

class YapilacakDetayRouter : PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref: DetayVC) {
        ref.kisiDetayPresenterNesnesi = YapilacakDetayPresenter()
        ref.kisiDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacakDetayInteractor()
    }
}
