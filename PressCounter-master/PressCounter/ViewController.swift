//
//  ViewController.swift
//  PressCounter
//
//  Created by Padman Selvamanickam on 18/12/2019.
//  Copyright © 2019 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Outlets
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    // Properties
    var count = 0
    
    
    // Interaction
    
    @IBAction func pressCounter(_ sender: UIButton) {
        count = count + 1
        countLabel.text = String(count)
    }



    @IBAction func pressResetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }
    

}

