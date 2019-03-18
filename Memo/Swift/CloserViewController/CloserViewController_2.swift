//
//  CloserViewController_2.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit




class CloserViewController_2: UIViewController {
    
    deinit {
        printLog("")
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //声明不带参数和没返回值的闭包
        let _ = block_one(name: 5) {
            print("block_one block 执行了")
        }
        
        
        print("-------------------------------------------------------------------------------")
        
        
        //声明带参数和有返回值的闭包在函数名中
        let k = block_two(name: "小明") { (result_1, result_2) -> String in
            
            print("-----\(result_1) \(result_2) ")
            
            return ""

        }
        
        print(k)
        
        print("-------------------------------------------------------------------------------")
        
        
    }
    
    
    
    
    //MARK: -  声明不带参数和没返回值的闭包
    func block_one(name: Int, completed: () -> ()) -> Int {
        
        let result = name + 10
        print("先执行函数")
        completed()
        
        return result
    }
    
    
    
    
    //MARK: - 声明带参数和有返回值的闭包在函数名中
    func block_two(name:String ,complated:(_ runStr: String,_ isStop:Bool) -> String) -> String {
        
        let resStr = name + "覆水难收"
        
        let blockResult = complated(resStr, true)
        
        return resStr + " - 内部函数返回" + "闭包结果: \(blockResult)"
    }
    
    
    
    
    
    
    
    
    
    
}
