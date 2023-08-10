//
//  FilmItem.swift
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

import SwiftUI

struct FilmItem: View {
    //BANA DIŞARIDAN BİR FİLM NESNESİ GELECEK.
    var film = Filmler()
    var genislik = 0.0  //dinamik yamak istiyorum, genislik de göndersin.
    var body: some View {
        VStack(spacing: 5){
            Image(film.film_resim!).frame(width: genislik)
            Text(film.film_ad!).foregroundColor(.gray)
            Text("Sepete Ekle")
                .padding(5) //içine 5 bosluk
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom,5) //altına 5 bosluk versin.
                .onTapGesture { //tıklanma özelliği verdim.
                    print("\(film.film_ad!) sepete eklendi")
                }
        }.background(Rectangle().fill(.white).shadow(radius: 3)) //dışına bir kutucuk olduğu için beyaz kutucuk tanımlayıp, gölge verdim.
    }
}

/*
 struct FilmItem_Previews: PreviewProvider {
 static var previews: some View {
 FilmItem()
 }
 }
 */
 
