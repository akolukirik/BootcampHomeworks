//
//  Entity.swift
//  Homework7
//
//  Created by Ali Kolukirik on 12.10.2022.
//

import Foundation


class Yapilacaklar {
    var yapilacak_id : Int?
    var yapilacak_is : String?

    init() {
    }

    init(yapilacak_id: Int? = nil, yapilacak_is: String? = nil) {
        self.yapilacak_id = yapilacak_id
        self.yapilacak_is = yapilacak_is
    }
}
