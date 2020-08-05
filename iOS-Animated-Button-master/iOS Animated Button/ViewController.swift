//
//  ViewController.swift
//  iOS Animated Button
//
//  Created by Padman on 13/03/2020.
//  Copyright © 2020 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func buyButtonPressed(_ sender: UIButton) {
        sender.buy()
    }
    
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        sender.sell()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

