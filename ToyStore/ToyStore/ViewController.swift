//
//  ViewController.swift
//  ToyStore
//
//  Created by Rumeysa TAN on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "TooY"
        
        let apperance = UINavigationBarAppearance()
        
        apperance.backgroundColor = UIColor(named: "mainColor")
        apperance.titleTextAttributes = [.foregroundColor: UIColor(named: "textC")!, NSAttributedString.Key.font: UIFont(name: "PermanentMarker-Regular", size: 22)]
        
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = apperance
        navigationController?.navigationBar.compactAppearance = apperance
        navigationController?.navigationBar.scrollEdgeAppearance = apperance
        
        
        
    }


}

