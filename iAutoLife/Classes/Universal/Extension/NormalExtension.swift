//
//  NormalExtension.swift
//  iAutoLife
//
//  Created by XuBupt on 16/4/25.
//  Copyright © 2016年 xubupt218. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func sizeWithMaxSize(mSize:CGSize,fontSize:CGFloat) -> CGSize {
        let str = NSString(string: self)
        return str.boundingRectWithSize(mSize, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:UIFont.systemFontOfSize(fontSize)], context: nil).size
    }
}

extension UIImage {
    func resize(size:CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        self.drawInRect(CGRectMake(0, 0, size.width, size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

extension UILabel {
    func widthFitText() -> CGFloat {
        guard self.text != nil else {return 0}
        return self.font.pointSize * CGFloat(NSString(string: self.text!).length)
    }
    
    func cornerBorder(cornerRadius:CGFloat,font:UIFont) {
        self.layer.borderColor = AlStyle.color.gray.CGColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 2
        self.font = font
        self.textAlignment = NSTextAlignment.Center
        self.layer.backgroundColor = AlStyle.color.white.CGColor
        
//        self.layer.shadowColor = UIColor.blackColor().CGColor
//        self.layer.shadowOffset = CGSizeMake(0, 0)
//        self.layer.shadowOpacity = 1
//        self.layer.shadowRadius = 10
    }
}

extension UIAlertController {
    internal static func alertWith(title title:String?, andMessage message:String?) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "好的", style: UIAlertActionStyle.Cancel, handler: nil))
        return alert
    }
}


//MARK:--自定义运算符
//除法向上取整 左结合，优先级150，与 * 、/ 优先级相同
infix operator /+ {associativity left precedence 150}
func /+ (left:Int,right:Int) -> Int {
    if left % right != 0 {
        return left / right + 1
    }
    return left / right
}

//数组和运算
func + <T : _IntegerArithmeticType> (left: [T], right: [T]) -> [T] { // 1
    assert(left.count == right.count, "vector of same length only")  // 2
    var sum = [T]() // 3
    for (key, v) in left.enumerate() {
        sum.append(v + right[key]) // 4
    }
    return sum
}