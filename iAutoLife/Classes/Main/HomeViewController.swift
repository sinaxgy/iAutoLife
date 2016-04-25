//
//  HomeViewController.swift
//  iAutoLife
//
//  Created by XuBupt on 16/4/25.
//  Copyright © 2016年 xubupt218. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    var coverView:UIImageView!
    var weatherLabel:UILabel!

    
    //MARK: --loadviews
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setNavStyle()
        self.loadSubviews()
        
    }
    
    func setNavStyle() {
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        self.navigationController?.navigationBar.subviews[0].alpha = 0
        self.navigationItem.title = "i车生活"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(leftItemAction(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(rightItemAction(_:)))
        self.navigationController?.navigationBar.tintColor = AlStyle.color.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName:AlStyle.font.nav,NSForegroundColorAttributeName:AlStyle.color.white]
        self.view.backgroundColor = AlStyle.color.gray_light
    }
    
    func loadSubviews() {
        coverView = UIImageView.init()
        coverView.image = UIImage(named: "cover")
        self.view.addSubview(coverView)
        
        weatherLabel = UILabel.init()
        weatherLabel.text = "2-21℃  晴 轻霾133"
        weatherLabel.font = AlStyle.font.normal
        print(AlStyle.font.normal.pointSize)
        self.view.addSubview(weatherLabel)
    }
    
    override func viewDidLayoutSubviews() {
        coverView.snp_makeConstraints { (make) in
            make.height.equalTo(self.view).multipliedBy(0.3)
            make.top.left.right.equalTo(self.view).offset(0)
        }
        
        weatherLabel.snp_makeConstraints { (make) in
            make.left.equalTo(self.view).offset(10)
            make.top.equalTo(coverView.snp_bottom).offset(10)
        }
    }
    
    //MARK: --action
    func leftItemAction(sender:UIBarButtonItem) {
        
    }

    func rightItemAction(sender:UIBarButtonItem) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
