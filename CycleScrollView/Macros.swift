//
//  Macros.swift
//  ShanHeCang
//
//  Created by 孙立昂 on 2018/11/20.
//  Copyright © 2018 SJKG. All rights reserved.
//

import Foundation
import UIKit

///商品界面底部高度
public let ShopBottomHeight: CGFloat = UIDevice.isiPhoneX() ? 17 : 0
public let ViewsBottomHeight: CGFloat = UIDevice.isiPhoneX() ? 34 : 0

///tabbar高度
public func TabBarHeight(context: UIViewController) ->CGFloat {
    return CGFloat(context.tabBarController?.tabBar.frame.size.height ?? 49)
}
///状态栏高度
public let StatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height

///导航栏高度
public func NavBarHeight(context: UIViewController) ->CGFloat {
    return CGFloat(context.navigationController?.navigationBar.frame.size.height ?? 44)
}

///NavControllerHeight高度
public func NavControllerHeight(context: UIViewController) ->CGFloat {
    return NavBarHeight(context: context) + StatusBarHeight
}



// 屏幕的宽
public let MainWidth:CGFloat = UIScreen.main.bounds.size.width

// 屏幕的高
public let MainHeight:CGFloat = UIScreen.main.bounds.size.height

// 屏幕等比例
public let kScreenWidthRatio:CGFloat =  MainWidth / 375
public let kScreenHeightRatio:CGFloat = MainHeight / 667
public func AdaptedW(width:CGFloat) ->CGFloat {
    return CGFloat(ceil(Float(width))) * kScreenWidthRatio
}
public func AdaptedH(height:CGFloat) ->CGFloat {
    return CGFloat(ceil(Float(height))) * kScreenHeightRatio
}

public func kUHSystemFontWithSize(R:CGFloat) ->UIFont {
    return UIFont.systemFont(ofSize: AdaptedW(width: R))
}

// Color
public func RGB(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
}
public func RGBAlpha(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) ->UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

public func HexRGB(rgbValue:Int) ->UIColor {
    return UIColor.init(red: CGFloat((rgbValue & 0xFF0000) >> 16)/255.0, green: CGFloat((rgbValue & 0xFF00) >> 8)/255.0, blue: CGFloat((rgbValue & 0xFF))/255.0, alpha: 1.0)
}

public func HexRGBAlpha(rgbValue:Int, a:CGFloat) ->UIColor {
    return UIColor.init(red: CGFloat((rgbValue & 0xFF0000) >> 16)/255.0, green: CGFloat((rgbValue & 0xFF00) >> 8)/255.0, blue: CGFloat((rgbValue & 0xFF))/255.0, alpha: a)
}

