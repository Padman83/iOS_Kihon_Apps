//
//  ViewController.swift
//  iOS TableView with AlertController
//
//  Created by Padman on 08/02/2020.
//  Copyright © 2020 Padman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    var lists: [String] = ["Popcorn"]
    
    
    @IBAction func addPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Add Content", message: "", preferredStyle: .alert)
        alert.addTextField {(UITextField) in
        }
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {(UIAlertAction) in
            let content = alert.textFields![0] as UITextField
            self.lists.append(content.text!)
            self.tableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = lists[indexPath.row]
        return cell!
   }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            lists.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}
