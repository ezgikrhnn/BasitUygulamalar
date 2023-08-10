//
//  Yemekler.swift
//  YemeklerUygulamasi
//
//  Created by Ezgi Karahan on 8.08.2023.
//

//burası sayesinde satırlarda yemekler görünecek.

import Foundation

class Yemekler : Identifiable {  //listelemede kullanabilmek için identifiable
    var yemek_id: Int?
    var yemek_adi: String?
    var yemek_resim_adi: String?
    var yemek_fiyat: Int?
    // ? simgesi koymayınca hata vermese de diğer dosyalarda nesne üretiminde sorun çıkartıyor ve boş const. oluşturamıyorum.
    init() {
     }
    
    
    //dolu const. oluşturuyorum
    init(yemek_id: Int, yemek_adi: String, yemek_resim_adi: String, yemek_fiyat: Int) {
        self.yemek_id = yemek_id
        self.yemek_adi = yemek_adi
        self.yemek_resim_adi = yemek_resim_adi
        self.yemek_fiyat = yemek_fiyat
    }
    
    
    
}
