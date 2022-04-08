import UIKit

class Odev2{

    func soru1(derece : Int) -> Int {
        let res = derece * Int(1.8) + 32
        return res
    }
    
    func cevre(a : Int, b : Int) -> Int{
        let res = 2 * (a + b)
        return res
    }
    
    func faktoriyel(num: Int) -> Int {
        var res = 1
        var n = num
        while n > 0{
            res = res * n
            n -= 1
        }
        return res
    }

    func wordKey(word:String, key : Character) -> Int {
        var count = 0
        for i in word.indices{
            if word[i] == key{
                count += 1
            }
        }
        return count
    }
    
    func angle(num: Int) -> Int{
        let res = (num - 2) * 180
        return res
    }
    
    func salary(day: Int) -> Int {
        var money = 0
        if day <= 20 {
            money = 8 * day * 10
        }else{
            //160 saat üzerinde mesai sayılan alan
            let mesaiSaatiUcret = (day - 20) * 8 * 20
            money = 1600 + mesaiSaatiUcret
         }
        return money
    }
    
    func kotaSalary(usage: Int) -> Int{
        return usage <= 50 ? 100 : 100 + (usage - 50) * 4
    }
}

let a = Odev2()

print("Sıcaklık F: \(a.soru1(derece: 32))")
print("Çevre: \(a.cevre(a: 12, b: 10))")
print("Faktoriyel: \(a.faktoriyel(num: 5))")
print("\(a.wordKey(word: "upSchoolupSchool", key: "o")) tane aynı harf var")
print("Açı: \(a.angle(num: 4))")
print("Maaş: \(a.salary(day: 21))")
print("Bu ayın internet ücreti: \(a.kotaSalary(usage: 60))")

