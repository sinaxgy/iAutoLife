//
//  MainViewController.swift
//  iAutoLife
//
//  Created by XuBupt on 16/4/24.
//  Copyright © 2016年 xubupt218. All rights reserved.
//

import UIKit

extension UIViewController {
    func setTabBarItemWith(title title: String?, image: UIImage?, selectedImage: UIImage?) {
        self.tabBarItem.image = image
        self.tabBarItem.selectedImage = selectedImage
        self.title = title
    }
}

class MainViewController: UITabBarController ,UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.initTabBar()
    }
    
    func initTabBar() {
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        vc1.setTabBarItemWith(title: "车辆", image: UIImage(named: "vehicle"), selectedImage: nil)
        let vc2 = ViewController()
        vc2.setTabBarItemWith(title: "商城", image: UIImage(named: "shopping"), selectedImage: nil)
        let vc3 = ViewController()
        vc3.setTabBarItemWith(title: "保险", image: UIImage(named: "insurance"), selectedImage: nil)
        let vc4 = ViewController()
        vc4.setTabBarItemWith(title: "我的", image: UIImage(named: "mine"), selectedImage: nil)
        
        self.viewControllers = [vc1,vc2,vc3,vc4]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
