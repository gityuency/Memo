//
//  CloserEscapeViewController.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class CloserEscapeViewController: UIViewController {
    
    
    deinit {
        printLog("")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 调用这个函数
        loadDate { (array) in
            print("返回结果 \(array)")
        }
        
        
    }
    
    
    func loadDate(completion: @escaping (_ result : [String])->()) -> () {
        
        //这里有一个很重要的参数 @escaping，逃逸闭包
        //简单来说就是 闭包在这个函数结束前内被调用，就是非逃逸闭包， * 调用的地方超过了这函数的范围，叫逃逸闭包 *
        //一般网络请求都是请求后一段时间这个闭包才执行，所以都是逃逸闭包。
        // 在Swift3.0中所有的闭包都默认为非逃逸闭包，所以需要用@escaping来修饰
        DispatchQueue.global().async {
            
            print("耗时操作\(Thread.current)")
            
            Thread.sleep(forTimeInterval: 2)
            
            let json=["1","2"]
            
            DispatchQueue.main.async {
                print("主线程更新\(Thread.current)")
                
                completion(json)
                //函数在执行完后俩秒，主线程才回调数据，超过了函数的范围，这里就是属于逃逸闭包，如果不用@escaping，编译器是编译不过的
            }
        }
    }
    
    
}
