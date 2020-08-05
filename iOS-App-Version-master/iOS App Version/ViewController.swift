//
//  ViewController.swift
//  iOS App Version
//
//  Created by Padman on 01/02/2020.
//  Copyright © 2020 Padman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kVersion = "CFBundleShortVersionString"
    let kBuildNumber = "CFBundleVersion"
    
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        versionLabel.text = getVersion()
    }
    
    func getVersion() -> String {
        let dictionary = Bundle.main.infoDictionary!
        let version = dictionary[kVersion] as! String
        let build = dictionary[kBuildNumber] as! String
        
        return "\(version)(\(build))"
    }

}

