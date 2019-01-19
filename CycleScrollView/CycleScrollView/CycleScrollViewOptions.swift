//
//  CycleScrollViewOptions.swift
//  ShanHeCang
//
//  Created by 孙立昂 on 2018/12/6.
//  Copyright © 2018 SJKG. All rights reserved.
//

import UIKit

public enum PageControlStyle {
    /// 系统的
    case Classic
    
    /// CHIPageControl的
    case Aji
    case Aleppo
    case Chimayo
    case Fresno
    case Jalapeno
    case Jaloro
    case Paprika
    case Puya
}

public enum PageControlAliment {
    case Center
    case Left
    case Right
}

public struct CycleOptions {
    /// 默认水平滑动
    public var scrollDirection: UICollectionView.ScrollDirection = .horizontal
    /// 图片填充样式，默认fill
    public var imageViewMode: UIView.ContentMode = .scaleToFill
    /// 滑动间隔时间
    public var scrollTimeInterval: TimeInterval = 2.0

    
// MARK: pageControl
    /// 默认显示pageControl
    public var showPageControl: Bool = true
    /// pageControl位置
    public var pageAliment: PageControlAliment = PageControlAliment.Center
    /// pageControl圆点半径
    public var radius: CGFloat = 5
    /// pageControl距离底部
    public var bottomOffset: CGFloat = 0
    /// pageControl距离右边
    public var rightOffset: CGFloat = 0
    /// pageControl间距
    public var padding: CGFloat = 7
    /// pageControl样式
    public var pageStyle: PageControlStyle = .Classic
    /// pageControl当前颜色
    public var currentPageDotColor: UIColor = UIColor.white
    /// pageControl其他颜色
    public var pageDotColor: UIColor = UIColor.gray
    
// MARK: titleLabel
    /// 文字选择，默认false
    public var isOnlyDisplayText: Bool = false
    /// lable背景色
    public var titleLabelBackgroundColor: UIColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.2)
    /// 文字颜色
    public var textColor: UIColor = UIColor.white
    /// 字体大小
    public var textFont: UIFont = UIFont.systemFont(ofSize: 14)
    /// 文本高度
    public var titleLabelHeight: CGFloat = 30
    /// 文字位置
    public var textAlignment: NSTextAlignment = .left
    /// 文字行数
    public var numberOflines = 1

    
    public init() {
        
    }
}


