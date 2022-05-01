//
//  YsayfaViewController.swift
//  Catch
//
//  Created by Rumeysa TAN on 23.04.2022.
//

import UIKit

class YsayfaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goAnasayfa(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let gitVC = storyboard.instantiateViewController(withIdentifier: "anasayfa") as! AnasayfaViewController
        self.present(gitVC, animated: true, completion: nil)
    }
    

}
