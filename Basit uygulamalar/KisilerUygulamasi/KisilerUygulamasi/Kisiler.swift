//
//  Kisiler.swift
//  KisilerUygulamasi
//
//  Created by Ezgi Karahan on 5.08.2023.
//

import Foundation

class Kisiler : Identifiable{
    var kisi_id: Int?
    var kisi_ad: String?
    var kisi_tel: String?
    
    
    //boş const:
    init(){
        
    }
    
    //dolu const
    init(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
}
