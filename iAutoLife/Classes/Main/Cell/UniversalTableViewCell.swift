//
//  UniversalTableViewCell.swift
//  iAutoLife
//
//  Created by XuBupt on 16/4/26.
//  Copyright © 2016年 xubupt218. All rights reserved.
//

import UIKit

enum UniversalCellStyle {
    case RightButton,RightLabel,RightSwitch,LeftILRightL,TextField//,RightObject
}

enum XuTextFieldInputType {
    case Date,CityAndArea
}

@objc protocol UniversalTableViewCellDelegate {
    optional func universalRightSwitchChanged(cell:UITableViewCell,boolValue:Bool)
}

class UniversalTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
