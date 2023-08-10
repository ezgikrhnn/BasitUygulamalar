//
//  Notlar.h
//  FilmlerUygulamasi
//
//  Created by Ezgi Karahan on 9.08.2023.
//

✅ İlk olarak contentView ismini FilmSayfa olarak değiştirdim ve resimleri asset dosyasına ekledim.
✅ FilmlerSayfada grid listeleme (kutucuk, kare şeklinde) oluşturmak isityorum ve her bir kutucuk yani film bir nesne olmalı 
✅ Bir Filmler sınıfım olacak, arka planda Kategoriler sınıfım ve Yönetmenler sınıfım olacak. Bu 3 sınıfı birlikte kullanacağım yani composition yapacağım. Filmler sınıfına eriştiğim zaman hem Kategori sınıfına hem de Yönetmenler sınıfına erişmiş olacağım.
✅ Önce dış sınıflar olan Kategoriler ve Yonetmenler sınıflarını oluşturuyorum. Bu sınıflardan oluşturulacak nesnelerin özelliklerini sınıf içinde tanımlıyorum.
✅ Daha sonra Filmler sınıflarını oluşturuyorum. Olası film nesnelerinin de özelliklerini tanımladıktan sonra Yonetmenler ve Kategoriler sınıflarından composition yapıyorum.
✅ Şimdi sıra geldi her bir grid listedeki kutucuk bir film nesnesi demiştim, bunun tasarımını yapmam gerekiyor. FilmItem isimli bir dosya oluşturuyorum.
✅ FilmItem dosyasında bir kutucugun tasarımını yaptım fakat sürekli hata vereceği için en alttaki struct kısmını yorum satırına aldım.
✅ Daha sonra FilmSayfa isimli dosyaya geldim(anasayfa gibi düşünülebilir), burada NavigationStack içinde GeometryReader içinde ScrolView oluşturdum, gerekli özellikleri yazdım.
✅ Daha sonra FilmlerSayfa içinde listeleme yapabilmek için bir veri kümesine ihtiyacım var. filmlerListesi isminde bir array oluşturdum.
✅ Daha sonra filmSayfa içerisinde onAppear içinde tüm filmleri, kategroileri, yönetmenleri özelliklerini de alarak tanımlıyorum. boş bir liste ds tanımlayip her birini teker teker listeye append ile ekliyorum. FilmlerListesi ile ekleme yaptığım lsiteyi de son olarak onAppear içinde oluşturuyorum.
✅ Daha sonra yine FilmSayfa ekranından devam ediyorum ScrolView içinde LazyVGrid kullanacağım. LazyVGrid "()" içinde colums özelliği tanımlıyorum. burada 1 satırda 2 tane olacak şekilde özelliğimi girdikten sonra spacing de veriyorum. verdiği spacing ve daha önceden scrolViewe verdiğim padding miktari ile her bir itemin genisliğinin kaç olacağını hesaplıyorum.
✅ Son olarak LazyVGrid içinde ForEach döngüsünde FilmItemdan filmi ve genisligi alıyorum. FOREACH İÇİNDE ALDIĞIM ANDA YAPTIĞIM TASARIMLAR BİR BÜTÜN OLARAK İLK DEFA SİMÜLATÖRDE GÖRÜNECEK.
✅ Daha sonra detaySayfasını oluşturmak için çalışmalara başlıyorum. FilmSayfa'daki her bir itema tıkladığımda detayları açılsın istiyorum.
✅ DetaySayfa dosyasını oluşturuyorum. Buraya bir veri transferi olacak, film nesnesi gelecek.
✅ DetaySayfa() içinde film nesnemi oluşturduktan sonra tasarımımı yapıp kodluyorum.
✅ Şimdi sıra FilmSayfadan DetaySayfaya sayfa geçişini yapmakta. Bunun için "NAVIGATIONLİNK" kullanıyordum. Navigationlinki ForEach içine yazıyorum. destination ve transfer edilecek veri bilgisini giriyorum.
✅ Şimdi ise 2. part olan AnaSayfa ekleme işlemine gidiyorum. Ana sayfada kategori seçip filtreleme yapacağız.
✅ KategorilerItem dosyası oluşturuyorum. burada kategori nesnesini ve textini tanımladım.
✅ Daha sonra AnaSayfa isimli bir dosya oluşturuyorum. bu sayfa uygulamamda ilk açılan sayfam olacak. BU NEDENLE APP DOSYASINDA AnaSayfayı tanımlıyorum.
✅ Anasayfa içinde Navigation stack içinde list oluşturdum. Listeleme yapmak için de bir veri kümesine ihtiyacım olacak. @State ile onu tanımlıyorum.
✅ Daha sonra array tanımlamasını yaptıktan sonra onAppear içinde kategorilerimi yazmaya başlıyorum. Daha önce FilmSayfada kullandığım kategorileri buraya kopyalabilirim.
✅ Listeme ekleme ve eşitleme yaptıktan sonra List içinde ForEach yazıyorum.
✅ Anasayfada Kategorilerden birine tıkladığımda o kategoriye sahip filmler ekrana gelsin istiyorum.
✅ FilmSayfama gidiyorum, veri transferi yapacağım. veri transferi için öncelikle tanımlamamı yaptım. Daha sonra navigation titleı değiştirdim ve navigationStacki sildim, çünkü gerek yok.
✅ Daha sonra FilmSayfa üzerinde filtreleme yapacağım. onAppear{} içinde, append kısmının altında bu işlemi gerçekleştiriyorum.
let finalListe = liste.filter({$0.kategori!.kategori_id == kategori.kategori_id})
✅ FilmlerSayfa da filtrelememi yaptıktan sonra AnaSaayfadan FilmlerSayfa ya geçiş yapabilmem gerekiyor. ForEach içinde NavigationLink oluşturuyorum, geçişimi buraya yapıyorum
✅ Ve bu şekilde çalışmam bitmiş oluyor 💖
