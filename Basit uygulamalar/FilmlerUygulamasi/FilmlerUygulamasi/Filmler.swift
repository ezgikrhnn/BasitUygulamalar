//
//  Filmler.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import Foundation

class Filmler : Identifiable{
    var film_id: Int?
    var film_ad: String?
    var film_yil: Int?
    var film_resim: String?
    
    //SON OLARAK COMPOSITION YAPIYORUM:
    //bu nesnelerle hem yönetene hem de kategoriye erişeceğim.
    var kategori: Kategoriler? // Kategoriler sınıfından kategori nesnesi
    var yonetmen: Yonetmenler? // Yonetmenler sınıfından yonetmen nesnesi
    
    
    init(){ //boş const.
        
    }
    
    init(film_id: Int, film_ad: String, film_yil: Int, film_resim: String, kategori: Kategoriler, yonetmen: Yonetmenler) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.film_resim = film_resim
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}
