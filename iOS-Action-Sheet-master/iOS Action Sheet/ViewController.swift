//
//  ViewController.swift
//  iOS Action Sheet
//
//  Created by Padman on 14/01/2020.
//  Copyright © 2020 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func displayActionSheet(_ sender: Any) {
        
        
        // 1. A UIAlertController with the ActionSheet style is created.
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        
        // 2. Two actions are created which can be added to the Alert Controller.
        let deleteAction = UIAlertAction(title: "Delete", style: .default)
        let saveAction = UIAlertAction(title: "Save", style: .default)
        
        
        // 3. Another action is created. For the Cancel style.
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        
        // 4. The actions are added to the Alert Controller.
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        optionMenu.addAction(cancelAction)
        
        
        // 5. The Alert Controller is presented.
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

