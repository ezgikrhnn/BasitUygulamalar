//
//  KisiKayıtSayfa.swift
//  KisilerUygulamasi
//
//  Created by Ezgi Karahan on 5.08.2023.
//

import SwiftUI

struct KisiKayitSayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    //KAYDETME FONKSİYONU YAZIYORUM:
    func kaydet(kisi_ad: String, kisi_tel: String){
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)") //butona bastığımda consoleda görünsun
    }
    
    var body: some View {
        VStack(spacing:100){
            TextField("Kişi Ad", text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Kişi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("KAYDET"){
                kaydet(kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
        }.navigationTitle("Kişi Kayıt")
    }
}

struct KisiKayitSayfa_Previews: PreviewProvider {
    static var previews: some View {
        KisiKayitSayfa()
    }
}
