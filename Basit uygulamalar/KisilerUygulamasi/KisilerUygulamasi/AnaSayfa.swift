//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Ezgi Karahan on 5.08.2023.
//

import SwiftUI

struct AnaSayfa: View {
    //anasayfada listeleme yapmak için veri kümesine ihtiyacım var
    @State private var kisilerListesi = [Kisiler]()  //kisiler sınıfından liste tanımladım.
    @State private var aramaKelimesi = ""
    
    //swipe actionla silme işlemi yapmak için onDelete içine yazmak üzere bir fonksiyona ihtiyacım var
    func sil(at offsets: IndexSet){
        let kisi = kisilerListesi[offsets.first!] //sildiğim kişi nesnesini verecek
        kisilerListesi.remove(at: offsets.first!)
    }
    var body: some View {
        NavigationStack{
            List{
                
                ForEach(kisilerListesi){ kisi in
                    //burada sayfa geçişi ve veri transferi olduğu için navigation link oluşturacağım.
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)){
                        KisilerSatir(kisi: kisi)
                        //burada sayfa göründüğü anda tek tek kişileri göreceğim. bunları da sayfa geçişi içinde yaptım ki detay sayfaya geçebileyim.
                    }
                    //swipe action ile silme işlemini uapacağım ve bunu listede yapacağım: onDelete kullanarak
                }.onDelete(perform: sil)
            }.navigationTitle("Kişiler")
                .toolbar{ //toolbar içinde + işareti var, önce toolbar oluşturdum.
                    ToolbarItem(placement: .navigationBarTrailing){  //sağ tarafa
                        //geçiş için navigationLink kullandım.
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName: "plus")
                        }
                    }
                }.onAppear{
                    var liste = [Kisiler]()
                    let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "+90 542 777 8890")
                    let k2 = Kisiler(kisi_id: 2, kisi_ad: "Mehmet", kisi_tel: "+90 533 373 8540")
                    let k3 = Kisiler(kisi_id: 3, kisi_ad: "Veli", kisi_tel: "+90 546 899 2242")
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    kisilerListesi = liste
                }
            //arama işlemi için navigationStacke searchable işlemi uyguluyorum.
        }.searchable(text: $aramaKelimesi, prompt: "Ara")
        //her işlem yaptıgında bana veri getirmesini istiyorum, bu nedenle onChange kullandım.
            .onChange(of: aramaKelimesi){ s in
                print("Kisi Ara: \(s)")  //yazdıgım degeri consoleda görmek için
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnaSayfa()
    }
}
