//
//  DetaySayfa.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import SwiftUI

struct DetaySayfa: View {
    
    //veri transferi olacak, bu sayfaya bir film nesnesi gelecek.
    var film = Filmler()
    
    var body: some View {
        VStack(spacing: 50){
            Image(film.film_resim!)
            
            Text(film.yonetmen!.yonetmen_ad!).font(.system(size: 30)) //filmler() sınıfı içinde composition yaptığım için yonetmen! şeklinde kullandım.
            
            Text(String(film.film_yil!)).font(.system(size: 50)).foregroundColor(.blue)
            Button("Sepete Ekle"){
                print("Detay Sayfa: \(film.film_ad!) filmi sepete eklendi")
            }
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(.indigo)
            .cornerRadius(10)
        }.navigationTitle(film.film_ad!)
    }
}

/*
struct DetaySayfa_Previews: PreviewProvider {
    static var previews: some View {
        DetaySayfa()
    }
}
*/
