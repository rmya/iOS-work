//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Rumeysa TAN on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        
//    bacground color;
        appearance.backgroundColor = UIColor(named: "anaRenk")
        
//    başlık rengi;
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yazirenk2")!, NSAttributedString.Key.font: UIFont(name: "Pacifico-Regular", size: 22)!]
        
//    status bar;
        navigationController?.navigationBar.barStyle = .black
        
//    gerçek rgb palet için;
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }


}

