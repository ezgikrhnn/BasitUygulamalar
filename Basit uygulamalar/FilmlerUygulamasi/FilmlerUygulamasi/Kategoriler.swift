//
//  Kategoriler.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import Foundation

class Kategoriler : Identifiable { //listelemede kullanmak için identifiable
    var kategori_id: Int?
    var kategori_ad: String?
    
    init(){ //boş const.

    }
    
    //dolu const.
    init(kategori_id: Int, kategori_ad: String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
    
    
}
