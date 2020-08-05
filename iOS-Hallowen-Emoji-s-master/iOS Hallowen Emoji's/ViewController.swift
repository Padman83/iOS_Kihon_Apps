//
//  ViewController.swift
//  iOS Hallowen Emoji's
//
//  Created by Padman on 10/02/2020.
//  Copyright © 2020 Padman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func Pumpkin(_ sender: Any) {
        let alertController = UIAlertController(title: "Happy Hallowen from the Woods !", message: "Muauauauhhaha!", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

