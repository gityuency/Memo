//
//  CloserViewController_3_Father.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class CloserViewController_3_Father: UIViewController {

    
    
    deinit {
        printLog("")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "父页面"
        
        
        
    }

    @IBAction func goNextController(_ sender: UIButton) {
        
        let secondVC = CloserViewController_3_Son()
        
        
        /* 第一种用法 */
        
        /// 第 6 / 6 步这里是代码的具体实现 这里写出了函数的具体实现
        secondVC.setMyChangeName { (name) in
            print( "拿到了子页面的名字: setMyChangeName: \(name)")  //这里是闭包回调, 子视图控制器触发了 block 之后,这里收到了消息
        }
        
        
        
        /* 第二种用法 */
//        secondVC.changText = { (names) -> () in
//
//            print("changText: \(names)")
//        }
        

        navigationController?.pushViewController(secondVC, animated: true)
     
    }
    

}
