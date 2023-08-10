//
//  Notlar.h
//  YemeklerUygulamasi
//
//  Created by Ezgi Karahan on 8.08.2023.
//


 
✅ Uygulamaya başlarken ilk önce ContentView ismini "AnaSayfa" olarak değiştirdim.
✅ Yemek satırları için bir Yemekler() sınıfına ihtiyacım var, her şeyi buradan türeteceğimm.
✅ Yemekler() classını oluşturduktan sonra YemekSatir dosyasını oluşturdum. Burada Yemekler() den türetme yapacağım.
✅ YemekSatir dosyası içinde satır duzenini oluşturdum. Resmi, fiyatı ve ismi gerekli stackler içinde doğru şekilde türettim. Fakat burada tek bir satır düzenini, boşluklaını vs "tek satırın özelliklerini" oluşturdum. Liste görünümü için anasayfa dosyasına geçiş yapıyorum.
✅ "AnaySayfa"da ilk olarak navstack içine list tanımlayıp yukarıya @State ile [Yemekler]() şeklinde Yemekler classindan bir liste ürettim.
✅ Daha sonra bilgileri sayfa açıldığı anda alması için onAppear içinde her bir yemeği Yemekler() sınıfından üretip özelliklerini girdim. Yeni bir liste de tanımlayıp bu listeye yemek nesnelerimi ekledikten sonra listemi en baştaki @State ile oluşturduğum yemekLİstesine eşitledim.
✅ Daha sonra listelemeyi yapmak için List{} içinde forEach yapıyorum.
ForEach(yemeklerListesi){ yemek in
    YemekSatir(yemek: yemek)
}
✅ Daha sonra satırlara tıklandıgında detayların görüntülenebilmesi için "DetaySayfa" isimli dosya oluşturdum.
✅ DetaySayfa dosyasına bir veri transferi olacak. Detay sayfasının içeriklerini kodluyorum.
✅ DetaySayfa kodlamalarım bittikten sonra Anasayfa'ya geri dönüyorum.
✅ Anasayfadan --> DetaySayfaya geçiş yapmak için anasayfada ForEach içinde NavigationLink oluşturuyorum.
✅
✅
✅
✅
✅
✅
