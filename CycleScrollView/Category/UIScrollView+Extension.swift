//
//  UIScrollView+Extension.swift
//  ShanHeCang
//
//  Created by 蔡秋俊 on 2018/11/28.
//  Copyright © 2018 SJKG. All rights reserved.
//

import UIKit

extension UIScrollView {
    var contentFitInset: UIEdgeInsets {
        get {
            return contentInset
        }
        set {
            if #available(iOS 11.0, *) {
                contentInsetAdjustmentBehavior = .never
                contentInset = newValue
                scrollIndicatorInsets = contentInset
            } else {
                contentInset = newValue
            }
        }
    }
}
