//
//  UITextField+Extension.swift
//  ExpertService
//
//  Created by Children Greens on 2017/12/26.
//  Copyright © 2017年 SHC. All rights reserved.
//

import UIKit

extension UITextField {
    
    convenience init(placeholder: String = "", textColor: UIColor, textSize: CGFloat) {
        self.init()
        self.placeholder = placeholder
        self.textColor = textColor
        self.font = UIFont.systemFont(ofSize: textSize)
    }
    
    convenience init(placeholder: String = "", textIntColor: Int, textSize: CGFloat) {
        self.init(placeholder: placeholder, textColor: UIColor(hexRGB: textIntColor), textSize: textSize)
    }
    
}
