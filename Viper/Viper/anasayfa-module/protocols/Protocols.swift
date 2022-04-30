//
//  Protocols.swift
//  Viper
//
//  Created by Rumeysa TAN on 30.04.2022.
//

import Foundation

//Ana Protokoller : View -> Presenter -> Interator
protocol ViewToPresenterProtocol {
    
    var interactor : PresenterToInteractorProtocol?{get set}
    var view : PresenterToViewProtocol?{get set}
    
    func toplamaYap(sayi1:String, sayi2:String)
    func carpmaYap(sayi1:String, sayi2:String)
}

protocol PresenterToInteractorProtocol {
    
    var presenter : InteractorToPresenterProtocol?{get set}

    func topla(sayi1:String, sayi2:String)
    func carp(sayi1:String, sayi2:String)
}

//Taşıyıcı Protocoller : Interator -> Presenter -> View
protocol InteractorToPresenterProtocol {
    func presentaraVeriGonder(sonuc:String)
}

protocol PresenterToViewProtocol{
    func vieweVeriGonder(sonuc:String)

}

//Router Protocol
protocol PresenterToRouterProtocol {
    static func createModul(ref:ViewController)
}
