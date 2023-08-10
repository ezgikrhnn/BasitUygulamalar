//
//  KategoriItem.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import SwiftUI

struct KategoriItem: View {
    
    var kategori = Kategoriler()
    
    var body: some View {
        Text(kategori.kategori_ad!)
    }
}


/*
struct KategoriItem_Previews: PreviewProvider {
    static var previews: some View {
        KategoriItem()
    }
}
*/
