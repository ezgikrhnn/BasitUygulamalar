//
//  DetaySayfa.swift
//  YemeklerUygulamasi
//
//  Created by Ezgi Karahan on 8.08.2023.
//

//bu sayfaya bir veri transferi olacak.

import SwiftUI

struct DetaySayfa: View {
    
    //buraya bir yemekler() nesnesi gelecek, ve ben bunu alıp kullanacağım
    var yemek = Yemekler()
    var body: some View {
        VStack(spacing: 100){
            Image(yemek.yemek_resim_adi!)
            
            Text("\(yemek.yemek_fiyat!) ₺")
                .font(.system(size: 50))
                .foregroundColor(.blue)
            
            Button("SİPARİŞ VER"){
                print("\(yemek.yemek_adi!) sipariş verildi")
            }.foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(10)
        }.navigationTitle(yemek.yemek_adi!)
    }
}

/*
 struct DetaySayfa_Previews: PreviewProvider {
 static var previews: some View {
 DetaySayfa()
 }
 }
 */
