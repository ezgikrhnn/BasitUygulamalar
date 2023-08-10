//
//  ContentView.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import SwiftUI

struct FilmSayfa: View {
    @State private var filmlerListesi = [Filmler]()
    
    var kategori = Kategoriler() //göndereceğim veri
    
    var body: some View {
    
        
            //sayfaya göre tasarımımı değiştirmek istediğim için geometry reader kullanacağım ve bu bana geometry isimli bir nesne verecek olsun
            GeometryReader{ geometry in
                let ekranGenislikBilgisi = geometry.size.width
                let itemGenislik = (ekranGenislikBilgisi-40)/2
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], spacing: 20){ //columns özelliğini bir satırda 2 tane olacak şekilde yaptım.
                        
                        /* sol 10, sağ 10, iki item arasında da 20 boşluk var yani 40 her bir item genişliğini söyle bulacağım:
                         (ekranGenişliği - 40)/2
                         */
                        
                        //şimdi ForEach ile listemi alacağım:
                        ForEach(filmlerListesi){ film in
                            NavigationLink(destination: DetaySayfa(film: film)){
                                FilmItem(film: film, genislik: itemGenislik)
                            }
                            
                            
                        }
                        
                    }
                    
                }.padding(10) //cevresinde 10 boşluk olsun.
                    .navigationTitle(kategori.kategori_ad!)
                    .onAppear{ //sayfa açıldığı anda listemin de gelmesini istediğim için onAppear kullanıyorum.
                        var liste = [Filmler]()
                        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
                        let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
                        let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
                        let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad:"Quentin Tarantino")
                        let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad:"Christopher Nolan")
                        let y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad:"Nuri Bilge Ceylan")
                        let y4 = Yonetmenler(yonetmen_id: 4, yonetmen_ad:"Roman Polanski")
                        let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2014, film_resim: "django", kategori: k1, yonetmen: y1)
                        let f2 = Filmler(film_id: 2, film_ad: "Interstellar", film_yil: 2015, film_resim: "interstellar", kategori: k3, yonetmen: y2)
                        let f3 = Filmler(film_id: 3, film_ad: "Inception", film_yil: 2010, film_resim: "inception", kategori: k3, yonetmen: y2)
                        let f4 = Filmler(film_id: 4, film_ad: "Anadoluda", film_yil: 2011, film_resim: "birzamanlaranadoluda", kategori: k2, yonetmen: y3)
                        let f5 = Filmler(film_id: 5, film_ad: "The Pianist", film_yil: 2008, film_resim: "thepianist", kategori: k2, yonetmen: y4)
                        let f6 = Filmler(film_id: 6, film_ad: "The Hateful Eight", film_yil: 2017, film_resim: "thehatefuleight", kategori: k1, yonetmen: y1)
                        
                        liste.append(f1)
                        liste.append(f2)
                        liste.append(f3)
                        liste.append(f4)
                        liste.append(f5)
                        liste.append(f6)
                        
                        //FİLTRELEME YAPIYORUM:
                        // $0 --> her bir filme nesnesine erişebilirim
                        let finalListe = liste.filter({$0.kategori!.kategori_id == kategori.kategori_id})
                        filmlerListesi = finalListe
                        
                        
                    }
            }
        }
    }

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FilmSayfa()
    }
}
*/
