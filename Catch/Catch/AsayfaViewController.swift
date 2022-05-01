//
//  AsayfaViewController.swift
//  Catch
//
//  Created by Rumeysa TAN on 23.04.2022.
//

import UIKit

class AsayfaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func gitB(_ sender: Any) {
        performSegue(withIdentifier: "gitB", sender: nil)
    }
    
}
