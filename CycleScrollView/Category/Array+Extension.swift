//
//  Array+Extension.swift
//  TableView
//
//  Created by Children Greens on 2017/8/24.
//  Copyright © 2017年 SHC_Retina. All rights reserved.
//

import Foundation

extension Array {
    
    subscript(input: [Int]) -> ArraySlice<Element> {
        get {
            var result = ArraySlice<Element>()
            for i in input {
                assert(i < self.count, "Index out of range")
                result.append(self[i])
            }
            return result
        }
        
        set {
            for (index, i) in input.enumerated() {
                assert(i < self.count, "Index out of range")
                self[i] = newValue[index]
            }
        }
    }
}
