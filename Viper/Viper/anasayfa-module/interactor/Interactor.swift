//
//  Interactor.swift
//  Viper
//
//  Created by Rumeysa TAN on 30.04.2022.
//

import Foundation

class Interactor : PresenterToInteractorProtocol{
    
    var presenter: InteractorToPresenterProtocol?
    
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1), let s2 = Int(sayi2){
            let toplam = s1 + s2
            presenter?.presentaraVeriGonder(sonuc: String(toplam))
        }
    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1), let s2 = Int(sayi2){
            let carpma = s1 * s2
            presenter?.presentaraVeriGonder(sonuc: String(carpma))
        }
    }
    
    
    
}
