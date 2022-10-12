//
//  DetayVC.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var yapilacakIsLabel: UITextField!

    var yapilacak: Yapilacaklar?

    var kisiDetayPresenterNesnesi:ViewToPresenterYapilacakDetayProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let yapilacak = yapilacak {
            yapilacakIsLabel.text = yapilacak.yapilacak_is
        }

        YapilacakDetayRouter.createModule(ref: self)
    }

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = yapilacakIsLabel.text, let k = yapilacak {
            kisiDetayPresenterNesnesi?.guncelle(yapilacak_id: k.yapilacak_id!, yapilacak_is: ka)
        }
    }
}
