//
//  AnaSayfa.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.

//BU SAYFA ANASAYFA YANİ İLK AÇILAN SAYFA OLACAK.

import SwiftUI

struct AnaSayfa: View {
    
//listeleme yapmak için bir veri kümesine ihtiyacım olacak, array oluşturuyorum.
    @State private var kategorilerListesi = [Kategoriler]()
    var body: some View {
        NavigationStack{
            List{
                ForEach(kategorilerListesi){ kategori in
                    NavigationLink(destination: FilmSayfa(kategori: kategori)){
                        KategoriItem(kategori: kategori)
                    }
                    
                }
            }.navigationTitle("kategoriler")
                .onAppear{
                    var liste = [Kategoriler]()
                    let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
                    let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
                    let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
                    
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    
                    kategorilerListesi = liste
                }
        }
    }
}

struct AnaSayfa_Previews: PreviewProvider {
    static var previews: some View {
        AnaSayfa()
    }
}
