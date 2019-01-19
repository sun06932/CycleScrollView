//
//  UIButton+Extension.swift
//  ExpertService
//
//  Created by Children Greens on 2017/12/26.
//  Copyright © 2017年 SHC. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, titleColor: UIColor, textSize: CGFloat, backgroundColor: UIColor) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = UIFont.systemFont(ofSize: textSize)
    }
    
    convenience init(title: String, titleIntColor: Int, textSize: CGFloat, backgroundIntColor: Int) {
        self.init(title: title, titleColor: UIColor(hexRGB: titleIntColor), textSize: textSize, backgroundColor: UIColor(hexRGB: backgroundIntColor))
    }
    
    
}
