//
//  UIDevice+Extension.swift
//  ShanHeCang
//
//  Created by 蔡秋俊 on 2018/12/10.
//  Copyright © 2018 SJKG. All rights reserved.
//

import UIKit

extension UIDevice {
    
    public static func isiPhoneX() -> Bool {
        
        if #available(iOS 11.0, *) {
            guard let delegate = UIApplication.shared.delegate else { return false }
            
            guard let keyWindow = delegate.window else { return false }
            
            guard let bottomSafeInset = keyWindow?.safeAreaInsets.bottom else { return false }
            
            if bottomSafeInset == 34.0 || bottomSafeInset == 21.0 {
                return true
            }
        }
        return false
    }
    
    
}
