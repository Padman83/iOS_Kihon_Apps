//
//  ViewController.swift
//  iOS Display Alert
//
//  Created by Padman on 23/01/2020.
//  Copyright © 2020 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "To All Mankind", message:
            "Save Our Mother Earth !", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

