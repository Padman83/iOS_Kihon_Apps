//
//  ViewController.swift
//  Basic Stop Watch
//
//  Created by Padman Selvamanickam on 07/01/2020.
//  Copyright © 2020 Padman Selvamanickam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    
    @IBAction func startTimer(_ sender: Any) {
        if(isPlaying) {
            return
        }
        
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    
    @IBOutlet weak var pauseButton: UIButton!
    
    
    @IBAction func pauseTimer(_ sender: Any) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
    }
    
    
    @IBAction func resetTimer(_ sender: Any) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timeLabel.text = String(counter)
        pauseButton.isEnabled = false
    }
    
    
    @objc func UpdateTimer() {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }


}

