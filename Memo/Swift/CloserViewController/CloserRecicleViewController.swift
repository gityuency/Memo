//
//  CloserRecicleViewController.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class CloserRecicleViewController: UIViewController {
    
    deinit {
        printLog("")
    }
    
    
    /// 字符串属性
    var propertyOne: String = "肥料不蒸发"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //测试案例 1
        demo_1()
        
        
    }
    
    
    /// 测试案例 1  这样做不会产生循环引用
    func demo_1() {
        
        UIView.animate(withDuration: 0) {
            self.propertyOne += "圣地亚哥"
        }
    }
    
    
    
    
    
    
    
}
