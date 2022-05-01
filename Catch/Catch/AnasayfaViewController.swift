//
//  AnasayfaViewController.swift
//  Catch
//
//  Created by Rumeysa TAN on 23.04.2022.
//

import UIKit

class AnasayfaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gitA(_ sender: Any) {
        performSegue(withIdentifier: "gitA", sender: nil)
    }
    
    
    @IBAction func gitX(_ sender: Any) {
//        performSegue(withIdentifier: "gitX", sender: nil)
    }
    
}
