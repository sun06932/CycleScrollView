//
//  String+Extension.swift
//  TableView
//
//  Created by SHC_Retina on 2017/6/23.
//  Copyright © 2017年 SHC_Retina. All rights reserved.
//

import UIKit

extension String {
    subscript(i: Int) -> Character {
        get {
            let index = self.index(self.startIndex, offsetBy: i)
            return self[index]
        }
    }
}
