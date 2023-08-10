//
//  SwiftUIView.swift
//  YemeklerUygulamasi
//
//  Created by Ezgi Karahan on 8.08.2023.

//burada Yemekler() classından özellikleri türetip satır şeklinde hizalayacagım

import SwiftUI

struct YemekSatir: View {
    
    //burada ilk önce benden bir yemek nesnesi isteyecek.
    var yemek = Yemekler()
    
    var body: some View {
        HStack{
            Image(yemek.yemek_resim_adi!).resizable().frame(width: 100, height: 100) //resmimi boyulandırdım.
            //resmi oluşturdum, şimdi dikey şekilde soralanacak olan isim ve fiyat stringini oluşturacağım.
            
            VStack(alignment: .leading, spacing: 30){
                Text(yemek.yemek_adi!)
                Text("\(yemek.yemek_fiyat!) ₺").foregroundColor(.blue)
            }
        }
    }
}

/*struct YemekSatir_Previews: PreviewProvider {
    static var previews: some View {
        YemekSatir()
    }
}

*/
