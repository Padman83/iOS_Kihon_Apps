//
//  ViewController.swift
//  iOS Switch Control
//
//  Created by Padman on 30/01/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        if stateSwitch.isOn {
            textLabel.text = "OFF"
            stateSwitch.setOn(false, animated:true)
        } else {
            textLabel.text = "ON"
            stateSwitch.setOn(true, animated:true)
        }
        
    }
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var stateSwitch: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            textLabel.text = "ON"
            
        } else {
            textLabel.text = "OFF"
        }
    }


}

