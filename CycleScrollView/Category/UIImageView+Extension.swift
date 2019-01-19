//
//  UIImageView+Extension.swift
//  ExpertService
//
//  Created by Children Greens on 2017/12/22.
//  Copyright © 2017年 SHC. All rights reserved.
//

import UIKit

extension UIImageView {
    convenience init(imageName: String) {
        self.init(image: UIImage(named: imageName))
    }
}
