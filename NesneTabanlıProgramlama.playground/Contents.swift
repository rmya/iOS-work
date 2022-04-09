import UIKit

class Araba{
    
    var renk : String?
    var hiz : Int?
    var isWorking : Bool?
    
//sınıftan nesne oluşturulduğunda çağırılır.
    init(){
//        print("Boş constructor çalıştı")
    }
    
//    init(renkX:String, hizX:Int, isWorkingX:Bool){
//        renk = renkX
//        hiz = hizX
//        isWorking = isWorkingX
//    }
    
//    self: sınıfın kendisini temsil eder
//    super: kalıtım ile üst sınıfı temsil eder.
    init(renk:String, hiz:Int, isWorking:Bool){
//        print("dolu constructor ")
        self.renk = renk
        self.hiz = hiz           //Shadowing-gölgeleme
        self.isWorking = isWorking
    }
    
    func bilgiAl(){  //metod
        print("******************")
        print("Renk:       \(renk!)")
        print("Hız:        \(hiz!)")
        print("Is Working: \(isWorking!)")
    }
    
    func startW(){
        isWorking = true //side effect !!!
        hiz = 5
    }
    
    func hızlan(kacKm: Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm: Int){
        hiz! -= kacKm
    }
    
    func stopW(){
        isWorking = false
        hiz = 0
    }
}

//Nesne oluşturma; boş
//let bmw = Araba()

//tab a basarak diğer iteme yazabilirsin
let bmw = Araba(renk: "Mavi", hiz: 100, isWorking: true)


//Değer atama
//bmw.renk = "Mavi"
//bmw.hiz = 100
//bmw.isWorking = true

//Değer okuma
//print("******************")
//print("Renk:       \(bmw.renk!)")
//print("Hız:        \(bmw.hiz!)")
//print("Is Working: \(bmw.isWorking!)")
//bmw.bilgiAl()
//bmw.stopW()
//bmw.bilgiAl()
//bmw.startW()
//bmw.bilgiAl()
//bmw.hızlan(kacKm: 100)
//bmw.bilgiAl()
//bmw.yavasla(kacKm: 50)
//bmw.bilgiAl()

//let sahin = Araba()
let sahin = Araba(renk: "Beyaz", hiz: 0, isWorking: false)
//sahin.renk = "Beyaz"
//sahin.hiz = 0
//sahin.isWorking = false

//print("******************")
//print("Renk:       \(sahin.renk!)")
//print("Hız:        \(sahin.hiz!)")
//print("Is Working: \(sahin.isWorking!)")
//sahin.bilgiAl()
//sahin.startW()
//sahin.bilgiAl()
//sahin.hızlan(kacKm: 30)
//sahin.bilgiAl()


// **************  Fonksiyonlar  *************

//Geri dönüş değeri olmayab --> void. Sadece işlem yapar

class Fonksiyonlar {
    
//    void
    func selamla(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    func selamlama1() -> String{
        let sonuc = "Merhaba Selda"
        return sonuc
    }
    
    //    parametre kullanımı
    func selamla2(isim : String){
            let sonuc = "Merhaba \(isim)"
            print(sonuc)
        }
    
    func toplama(sayi1 : Int, sayi2: Int) -> Int{
        let toplam = sayi1 + sayi2
        return toplam
    }
    
//    Overloading  -> aynı isimli fonksşyonun farklı parametreler ile kullnımı
    func carpma(sayi1 : Int, sayi2: Int){
        print("Çarpma: \(sayi1 * sayi2)")
    }
    func carpma(sayi1 : Double, sayi2: Double){
        print("Çarpma: \(sayi1 * sayi2)")
    }
    func carpma(sayi1 : Int, sayi2: Int, isim: String){
        print("Çarpma: \(sayi1 * sayi2) - işlemi yapan: \(isim)")
    }
}

let f = Fonksiyonlar()
f.selamla()
let gelenSonuc = f.selamlama1()
print("Gelen sonuc: \(gelenSonuc)")

f.selamla2(isim: "Alperen")

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen sonuc: \(gelenToplam)")

f.carpma(sayi1: 5, sayi2: 8, isim: "Beyza")


//          ******** STATIC *******
// Değişken ve metodlara sınıf ismi ile erişim sağlanır.

class ClassA{
    
    static  var x = 10
    
    static func metod(){
        print("metod çalıştı")
    }
}
print("--------------------------------")

//static kullanmadan
//let a = ClassA()
//print(a.x)
//print(a.metod())

print(ClassA.x)
ClassA.metod()

print("--------------------------------")
class ClassB{
    
    var x = 10
    
    func metod(){
        print("metod çalıştı")
    }
}

//let b = ClassB()  // = sonraki kısım sanal nesne
print(ClassB().x)
ClassB().metod()
print("--------------------------------")

//     **********  ENUM ***********

enum KonserveBoyut{
    
    case small
    case medium
    case large
}

func ucretHesapla(boyut:KonserveBoyut, adet:Int){
    
    switch boyut{
    case .small :
        print("Fiyat: \(adet * 10) ₺")
    case .large :
        print("Fiyat: \(adet * 20) ₺")
    case .medium :
        print("Fiyat: \(adet * 30) ₺")
    }
}

ucretHesapla(boyut: .large, adet: 23)

print("--------------------------------")

//     **********  COMPOSITION  ***********

class Kategoriler {
    var kategori_id : Int?
    var kategori_adi : String?
    
    init(kategori_id:Int, kategori_adi:String){
        self.kategori_id = kategori_id
        self.kategori_adi = kategori_adi
    }
}

class Yonetmenler{
    var yonetmen_id : Int?
    var yonetmen_adi : String?
    
    init(yonetmen_id:Int, yonetmen_adi:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_adi = yonetmen_adi
    }
}

class Filmler{
    
    var film_id: Int?
    var film_adi: String?
    var film_year: Int?
    var kategori: Kategoriler?
    var yonetmen: Yonetmenler?
    
    init(film_id:Int, film_adi:String, film_year:Int, kategori:Kategoriler, yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_adi = film_adi
        self.film_year = film_year
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_adi: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_adi: "Bilim Kurgu")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Q.Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "C.Nolan")

let f1 = Filmler(film_id: 1, film_adi: "Intersellar", film_year: 2019, kategori: k2, yonetmen: y2)

//print("Film id: \(f1.film_id!)")
//print("Film adı: \(f1.film_adi!)")
//print("Film yılı: \(f1.film_year!)")
//
//print("Film kategori: \(f1.kategori!.kategori_adi!)")
//print("Film yonetmen: \(f1.yonetmen!.yonetmen_adi!)")

// ******** KALITIM ***********
// subclass : superclass

class Ev {
    var pencereSayisi : Int?
    
    init (pencereSayisi : Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray : Ev {
    var kuleSayisi : Int?
    
    init (kuleSayisi : Int, pencere : Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencere)
    }
}

class Villa : Ev {
    var garajVarMi : Bool?
    
    init (garajVarMi : Bool, pencereSayisi : Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencere: 3)
var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.pencereSayisi!)
print(bogazVilla.garajVarMi!)
print("-------------------------------")

// ********* Override **********

class Hayvan {
    func sesCıkar(){
        print("Sesim yok")
    }
}

class Memeli : Hayvan {
    
}

class Kedi : Memeli {
    override func sesCıkar() {
        print("Miyav miyav")
    }
}

class Kopek : Memeli {
    override func sesCıkar() {
        print("Hav havv")
    }
}

var hayvan = Hayvan()
var memli = Memeli()
var kedi = Kedi()
var dog = Kopek()

hayvan.sesCıkar()
memli.sesCıkar() //kendisinde yok --> üst sınıftaki fonksiyounu alır.
kedi.sesCıkar()
dog.sesCıkar() //local her zaman baskındır.
print("-------------------------------")

//  ******* Nesne Tip dönüşümleri *******

// Tip kontrolü --> is  nesne türünü öğrenmek için
//üst sınıfın alt sınıfa dönüşümü --> DownCasting*  --> as! ve as?
//alt  sınıfın üst sınıfa dönüşümü --> UpCasting  --> as
//dönüşüm için kalıtım olması zorunludur. ilişki olmadan sağlanamaz.
//as! --> hata yok, güvenli vaad, daha riskli.
//as? --> sıkıntı olabilir, sıkıntı olursa nil yap

//******** UPCASTING *************
var ev = Saray(kuleSayisi: 4, pencere: 100) as  Ev

//******** DOWNCASTING ***********
var saray = Ev(pencereSayisi: 5) as? Saray

//******* Tip Kontrolü

if ev is Ev {
    print("Nesne ev sınıfından türetilmiştir")
} else {
    print("Nesne ev sınıfından türetilMEmiştir")
}

print("-------------------------------")


// *********** PROTOCOL ***********  Interface

// bir sınıfa birden fazla protocol eklenebilir.

protocol MyProtocol {
    
    var degisken : Int {get set}    //    değişkenler veri aktarılıp okunur özellikte olmalı
    
    func metod1()
    func metod2() -> String
}

class ClassP : MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("metod1 çalıştı")
    }
    
    func metod2() -> String {
        return "metod2 çalıştı"
    }
}

var p = ClassP()
print(p.degisken)
print(p.metod1())
print(p.metod2())
print("-------------------------------")

// ********** EXTENSION ***********

//Kotlinde --> infix fonksiyonu olarak geçiyor.
//Genişletme yapısı, hazır swift sınıflarına extra özellik ekleyebilirsin anlamına geliyor.

extension Int {  //Int sınıgına özellik ekleyerek genişletme
    
    func carp(sayi : Int) -> Int {
        return self * sayi
    }
}

var x = 3.carp(sayi: 4)  //Int sınıfına carpma özelliği fonksiyonu ekledik self = 3, sayi = 4
print(x)
print("-------------------------------")

// ***********  Closure  **************
//saklı fonksiyon completionHandler da kullandığına benziyor
//{ in gibi, in veri getirmek, sanal nesne

var ifade = {
    print("Closure kullanımı")
}

ifade()

