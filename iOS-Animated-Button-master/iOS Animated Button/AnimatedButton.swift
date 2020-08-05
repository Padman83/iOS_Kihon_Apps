//
//  AnimatedButton.swift
//  iOS Animated Button
//
//  Created by Padman on 13/03/2020.
//  Copyright © 2020 Padman Selvamanickam. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func buy() {
        let buy = CASpringAnimation(keyPath: "transform.scale")
        buy.duration = 0.8
        buy.fromValue = 0.99
        buy.toValue = 1.0
        buy.autoreverses = true
        buy.repeatCount = .infinity
        buy.initialVelocity = 0.7
        buy.damping = 3.0
        layer.add(buy, forKey: nil)
    }
    
    
    func sell() {
        let sell = CABasicAnimation(keyPath: "opacity")
        sell.duration = 0.5
        sell.fromValue = 2
        sell.toValue = 0.5
        sell.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        sell.repeatCount = 8
        layer.add(sell, forKey: nil)
    }
}






