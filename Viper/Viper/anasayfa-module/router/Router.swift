//
//  Router.swift
//  Viper
//
//  Created by Rumeysa TAN on 30.04.2022.
//

import Foundation

class Router : PresenterToRouterProtocol{
    
    static func createModul(ref: ViewController) {
        let presenter = Presenter()
        
        // view sınıfının değişkenini yetkilendirme;
        ref.presenterNesnesi = presenter
        
        // presenter sınıfının değişkenlerini yetkilendirme;
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        // interactor sınıfının değişkenini yetkilendirme;
        ref.presenterNesnesi?.interactor?.presenter = presenter
    }
    
        
    
}
