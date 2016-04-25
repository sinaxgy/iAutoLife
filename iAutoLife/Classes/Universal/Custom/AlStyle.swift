//
//  AlStyle.swift
//  iAutoLife
//
//  Created by XuBupt on 16/4/25.
//  Copyright © 2016年 xubupt218. All rights reserved.
//

import Foundation
import UIKit

internal struct AlStyle {

    internal static let cornerRadius:CGFloat = 5
    internal static let size = UIScreen.mainScreen().bounds.size
    internal static var scale = UIScreen.mainScreen().scale
    internal static let cellHeight:CGFloat = AlStyle.algebraConvert(50)
    
    internal struct font {
        internal static var normal:UIFont {
            return UIFont.systemFontOfSize(AlStyle.algebraConvert(14))
        }
        
        internal static var small:UIFont {
            return UIFont.systemFontOfSize(AlStyle.algebraConvert(12))
        }
        
        internal static var nav:UIFont {
            return UIFont.systemFontOfSize(AlStyle.algebraConvert(18))
        }
    }
    
    internal static func algebraConvert (id:CGFloat) -> CGFloat {
        #if IPHONE6 || IPHONE6S
            return id
        #else
            return id * CGFloat(size.width / 375.0)
        #endif
    }
    
    struct color {
        internal static var blue:UIColor {
            return UIColor(red: 0, green: 132/255, blue: 1, alpha: 1)
        }
        
        internal static var blue_light:UIColor {
            return UIColor(red: 127/255, green: 193/255, blue: 1, alpha: 1)
        }
        
        internal static var white:UIColor {
            return UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
        }
        
        internal static var gray:UIColor {
            return UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        }
        
        internal static var gray_light:UIColor {
            return UIColor(red: 230/255, green: 230/255, blue: 235/255, alpha: 1)
        }
        
        internal static var black:UIColor {
            return UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1)
        }
    }
}