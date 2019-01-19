//
//  UIImage+Extension.swift
//  ShanHeCang
//
//  Created by 蔡秋俊 on 2018/11/23.
//  Copyright © 2018 SJKG. All rights reserved.
//

import UIKit

extension UIImage {

    public static func imageWith(color: UIColor, size: CGSize = CGSize(width: 1.0, height: 1.0)) -> UIImage {
        // 描述矩形
        let rect = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        // 开启位图上下文
        if size == CGSize(width: 1.0, height: 1.0) {
            UIGraphicsBeginImageContext(rect.size)
        } else {
            UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        }
        // 获取位图上下文
        let context = UIGraphicsGetCurrentContext()
        // 使用color演示填充上下文
        context?.setFillColor(color.cgColor)
        // 渲染上下文
        context?.fill(rect)
        // 从上下文中获取图片
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()
        // 结束上下文
        UIGraphicsEndImageContext()
        
        return resultImage ?? UIImage()
    }
}
