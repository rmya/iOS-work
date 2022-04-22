//
//  BsayfaViewController.swift
//  Catch
//
//  Created by Rumeysa TAN on 23.04.2022.
//

import UIKit

class BsayfaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func gitY(_ sender: Any) {
        performSegue(withIdentifier: "gitY", sender: nil)
    }
    

}
