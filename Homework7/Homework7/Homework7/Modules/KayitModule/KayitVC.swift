//
//  KayitVC.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import UIKit

class KayitVC: UIViewController {

    @IBOutlet weak var yapilacakIsLabel: UITextField!

    var yapilacakIsKayitPresenterNesnesi: ViewToPresenterYapilacakIsKayitProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacakIsKayitRouter.createModule(ref: self)
    }

    @IBAction func buttonKaydet(_ sender: Any) {
        if let yapilacak = yapilacakIsLabel.text {
            yapilacakIsKayitPresenterNesnesi?.ekle(yapilacak_is: yapilacak)
        }
    }
}
