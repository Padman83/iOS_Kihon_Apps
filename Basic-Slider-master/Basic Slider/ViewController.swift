//
//  ViewController.swift
//  Basic Slider
//
//  Created by Padman on 28/12/2019.
//  Copyright © 2019 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Imported the labels,so that we can access the labels.
    
    // We imported the slider and we added the action or listener to the slider.
    
    @IBOutlet weak var lbl: UILabel!
    
    
    @IBAction func slider(_ sender: UISlider) {
        
        lbl.text = String(Int(sender.value))
    }
    
    // Setting text of label equal to the value of the slider which refers to converted to integer to remove the decimels than we converted to a string text so we can display.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

