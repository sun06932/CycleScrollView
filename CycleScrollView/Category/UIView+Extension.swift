//
//  UIView+Extension.swift
//  TableView
//
//  Created by SHC_Retina on 2017/6/23.
//  Copyright © 2017年 SHC_Retina. All rights reserved.
//

import UIKit


extension UIView {
    
    var width: CGFloat {
        return frame.width
    }
    
    var height: CGFloat {
        return frame.height
    }
    
    var minX: CGFloat {
        return frame.minX
    }
    
    var minY: CGFloat {
        return frame.minY
    }
    
    var maxX: CGFloat {
        return frame.maxX
    }
    
    var maxY: CGFloat {
        return frame.maxY
    }
    
    var midX: CGFloat {
        return frame.midX
    }
    
    var midY: CGFloat {
        return frame.midY
    }

    var size: CGSize {
        get {
            return frame.size
        }
        set {
            frame.size = newValue
        }
    }
    
    var origin: CGPoint {
        get {
            
            return frame.origin
        }
        set {
            frame.origin = newValue
        }
    }
    
}
