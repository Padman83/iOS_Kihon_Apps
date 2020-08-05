//
//  ViewController.swift
//  Tap & Hold Counter
//
//  Created by Padman Selvamanickam on 19/12/2019.
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
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }
    
    
    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }
    

    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    // Functions
    func increaseCount() {
        count = count + 1
        countLabel.text = String(count)
    }
}

