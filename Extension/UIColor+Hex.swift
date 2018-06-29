//
//  UIColor+Hex.swift
//  BW_Swift
//
//  Created by plum on 2018/6/25.
//  Copyright © 2018年 plum. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        assert(red >= 0 && red <= 255, "red componet invalid")
        assert(green >= 0 && green <= 255, "red componet invalid")
        assert(blue >= 0 && blue <= 255, "red componet invalid")
        self.init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: alpha)
    }
    
    convenience init(hex: Int) {
        self.init(red: hex >> 16 & 0xFF, green: hex >> 8 & 0xFF, blue: hex & 0xFF)
    }
}
