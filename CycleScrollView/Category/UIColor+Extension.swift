//
//  UIColor+Extension.swift
//  TableView
//
//  Created by SHC_Retina on 2017/6/23.
//  Copyright © 2017年 SHC_Retina. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(redInt: Int, greenInt: Int, blueInt: Int, alpha: CGFloat = 1.0) {

        assert(redInt >= 0 && redInt <= 255, "Invalid red component")
        assert(greenInt >= 0 && greenInt <= 255, "Invalid green component")
        assert(blueInt >= 0 && blueInt <= 255, "Invalid blue component")
        assert(alpha >= 0.0 && alpha <= 1.0, "Invalid alpha component")
        
        self.init(red: CGFloat(redInt) / 255.0,
                  green: CGFloat(greenInt) / 255.0,
                  blue: CGFloat(blueInt) / 255.0,
                  alpha: alpha)
    }
    
    
    convenience init(hexRGB: Int, alpha: CGFloat = 1.0) {

        self.init(redInt: (hexRGB >> 16) & 0xFF,
                  greenInt: (hexRGB >> 8) & 0xFF,
                  blueInt: (hexRGB >> 0) & 0xFF,
                  alpha: alpha)
    }
}
