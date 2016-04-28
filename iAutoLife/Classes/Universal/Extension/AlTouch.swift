//
//  AlTouch.swift
//  iAutoLife
//
//  Created by XuBupt on 16/4/28.
//  Copyright © 2016年 xubupt218. All rights reserved.
//

import UIKit
import LocalAuthentication

class AlTouch: NSObject {
    
    static var isTouchIdAvailable:Bool {
        let authenticationContext = LAContext()
        var error: NSError?
        let isTouchIdAvailable = authenticationContext.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics,
                                                                         error: &error)
        return isTouchIdAvailable
    }
    
    static func touchIdentfy(reply: ((Bool, NSError?) -> Void)?) {
        if (reply != nil) {
            LAContext().evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "需要验证您的指纹来确认您的身份信息", reply: reply!)
        }
    }

}
