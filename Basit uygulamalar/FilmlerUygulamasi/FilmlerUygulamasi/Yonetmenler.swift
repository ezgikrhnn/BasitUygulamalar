//
//  Yonetmenler.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import Foundation

class Yonetmenler: Identifiable{
    var yonetmen_id: Int?
    var yonetmen_ad: String?
    
    init(){ //boş const.

    }
    
    //dolu const.
    init(yonetmen_id: Int, yonetmen_ad: String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
