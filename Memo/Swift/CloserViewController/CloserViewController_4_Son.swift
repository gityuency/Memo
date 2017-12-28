//
//  CloserViewController_4_Son.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class CloserViewController_4_Son: UIViewController {
    
    deinit {
        printLog("")
    }
    
    
    /*
     1. 在B中 声明一个block
     typealias TestBlock = (String)->()
     
     2. 在B中 持有一个block变量
     var blo: TestBlock?
     
     3. 在B中 调用
     self.blo?("It is block test")
     
     4. 在`A`中需要接受值的地方
     let b = B()
     b.blo = {str in
     print("test block---\\(str)")
     }
     
     */
    
    
    ///反向传值4步走! 第一步 在 B 声明一个 block
    typealias defineBlock = (String) -> ()
    
    
    ///反向传值4步走! 第一步 在 B 中持有这个 Block
    var sonBlock: defineBlock?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func backToFather(_ sender: Any) {
        
        ///反向传值4步走! 第一步 在 B 中调用这个 Block
        sonBlock?("我有金坷垃,能生产氮磷钾!")
        
    }
    
}
