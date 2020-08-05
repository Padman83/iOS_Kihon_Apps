//
//  ViewController.swift
//  iOS ScrollView
//
//  Created by Padman on 22/01/2020.
//  Copyright © 2020 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1
        imageView = UIImageView(image: UIImage(named: "Yellow Flower.jpg"))
        
        // 2
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        
        // 3
        scrollView.contentSize = imageView.bounds.size
        
        // 4
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        }
}

