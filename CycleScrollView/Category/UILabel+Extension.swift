//
//  UILabel+Extension.swift
//  ExpertService
//
//  Created by Children Greens on 2017/12/22.
//  Copyright © 2017年 SHC. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String = "", textIntColor: Int, textSize: CGFloat, isBold: Bool = false) {
        self.init(text: text, textColor: UIColor(hexRGB: textIntColor), textSize: textSize, isBold: isBold)
    }
    
    convenience init(text: String = "", textColor: UIColor, textSize: CGFloat, isBold: Bool = false) {
        self.init(frame: CGRect.zero)
        
        self.text = text
        
        self.textColor = textColor
        
        if isBold {
            self.font = UIFont.boldSystemFont(ofSize: textSize)
        } else {
            self.font = UIFont.systemFont(ofSize: textSize)
        }
    }
    
    convenience init(text: String = "", textIntColor: Int, fontSize: CGFloat, fontName: String) {
        self.init(text: text, textColor: UIColor(hexRGB: textIntColor), fontSize: fontSize, fontName: fontName)
    }
    
    convenience init(text: String = "", textColor: UIColor, fontSize: CGFloat, fontName: String) {
        self.init(frame: CGRect.zero)
        self.text = text
        self.textColor = textColor
        self.font = UIFont(name: fontName, size: fontSize)
    }
    
}
