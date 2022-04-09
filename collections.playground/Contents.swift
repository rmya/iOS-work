import UIKit

// Array, Sort, Dictionary

// SET --> sıralı veri eklemez, array sıralı
//Dıctıonaru arrayden farklı olarak key tanımlamasını da biz veririz.Arrayda index int ve sıralı. API işlemlerinde parametre göndermek için kullanılıyor mesela.

// Array Kullanımı

var numaralar = [10.0,20.0,30.0]
var sayilar = [Int](repeating: 0, count: 1000)

var meyveler = [String]()

//veri ekleme
meyveler.append("Elma")  //index = 0
meyveler.append("Muz")
meyveler.append("Kiraz")
print(meyveler)

//Güncelleme
meyveler[0] = "Yeşil Elma"
print(meyveler)

//Insert
meyveler.insert("Portakal", at:1)
print(meyveler)

print(meyveler.isEmpty) //false ise içinde eleman var
print(meyveler.count) //eleman sayısı

print(meyveler.first!)
print(meyveler.last!)
print(meyveler.contains("Muz"))

for meyve in meyveler {
    print("Sonuc: \(meyve)")
}

for (i,meyve) in meyveler.enumerated() {
    print("\(i) --> \(meyve)")
}

meyveler.remove(at: 0)
print(meyveler)
print("-----------------------------")

class Ogrenciler {
    
    var no : Int?
    var ad : String?
    var sinif : String?
    
    init(no:Int, ad:String, sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Arzum", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}
print("-----------------------------")

// ********** Filtreleme *************
// $0 --> it(kotlin)
//$0 ilk gelen $1 ikinci

var f1 = ogrencilerListesi.filter({
    $0.no! > 100
})

print("Filtreleme 1")
for o in f1 {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}
print("-----------------------------")

var f2 = ogrencilerListesi.filter({
    $0.ad!.contains("y")
})

print("Filtreleme 2")
for o in f2 {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}

print("-----------------------------")
// ******** Sıralama ******

var s1 = ogrencilerListesi.sorted(by: {
    $0.no! > $1.no!
})
print("Sayısal büyükten küçüğe sıralama")
for o in s1 {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}

print("-----------------------------")
var s2 = ogrencilerListesi.sorted(by: {
    $0.no! < $1.no!
})
print("Sayısal küçükten büyüğe sıralama")
for o in s2 {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}

print("-----------------------------")
var s3 = ogrencilerListesi.sorted(by: {
    $0.ad! > $1.ad!
})
print("Metinsel büyükten küçüğe sıralama")
for o in s3 {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}

print("-----------------------------")
var s4 = ogrencilerListesi.sorted(by: {
    $0.ad! < $1.ad!
})
print("Metinsel küçükten büyüğe sıralama")
for o in s4 {
    print("No: \(o.no!)  Ad: \(o.ad!)   Sınıf: \(o.sinif!)")
}

print("-----------------------------")

//  ******** SET ***********
//aynı veri tekrar eklenmez, içerik karışık

var meyveler1 = Set<String>()

meyveler1.insert("Elma")
meyveler1.insert("Portakal")
meyveler1.insert("Muz")
print(meyveler1)
meyveler1.insert("Amasya Elması")
print(meyveler1)

for meyve in meyveler1 {
    print("Sonuc 1 : \(meyve)")
}

for (i,meyve) in meyveler1.enumerated() {
    print("\(i) --> \(meyve)")
}

print(meyveler1.count)

print("-----------------------------")
// ******** Dictionary - HashMap **********
//Any - java object

var iller = [Int : String]()

//veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
iller[7] = "Antalya"

print(iller)

//veri güncelleme
iller[16] = "Yeni Bursa"
print(iller)

print("-----------------------------")
for (anahtar,deger) in iller {
    print("Key: \(anahtar) Value: \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)

print("-----------------------------")
// ************** GUARD ***********

// İF in tersi, return, break gibi yapılar içerir, fonksiyon içerisinde kullnılır
//if true, guard false için çalışır. Hata yakalamak için
// iflet gibi guardlet de var

func kisiTanima(ad:String){
    if(ad == "Ahmet"){
        print("Merhaba Ahmet")
    }else {
        print("Farklı bir kişi")
    }
}

kisiTanima(ad: "Ahmet")

print("-----------------------------")

func kisiTanimaGuard(ad:String){
//  adı ahmet ise çalışmayacak else çalışacak
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanimaGuard(ad: "Ahmet")
print("-----------------------------")

// *********** Hata Ayıklama **************

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}
//throws hata fırlatms özelliği olan fonksiyon demek
func bolme(sayi1:Int, sayi2:Int) throws -> Int {
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}
//
//let sonuc = bolme(sayi1: 10, sayi2: 0)
//print(sonuc)
do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
} catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez")
}

//diğer yöntem
//hata varsa nil yoksa sonuc
let sonuc1 = try? bolme(sayi1: 10, sayi2: 0)
if let temp = sonuc1 {
    print(temp)
}else{
    print("Bu sayı sıfıra bölünemez.")
}
