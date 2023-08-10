//
//  KisiDetaySayfa.swift
//  KisilerUygulamasi
//
//  Created by Ezgi Karahan on 5.08.2023.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisi = Kisiler()
    
    
    //KAYDETME FONKSİYONU YAZIYORUM:
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String){
        print("Kişi Güncelle : \(kisi_id)-\(kisi_ad) - \(kisi_tel)") //butona bastığımda consoleda görünsun
    }
    
    var body: some View {
        VStack(spacing:100){
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Kişi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("GUNCELLE"){
                guncelle(kisi_id: kisi.kisi_id!, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
        }.navigationTitle("Kişi Detay")
            .onAppear{
                tfKisiAd = kisi.kisi_ad!
                tfKisiTel = kisi.kisi_tel!
                
            }
    }
}

struct KisiDetaySayfa_Previews: PreviewProvider {
    static var previews: some View {
        KisiDetaySayfa()
    }
}
