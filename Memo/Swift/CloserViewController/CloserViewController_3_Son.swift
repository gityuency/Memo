//
//  CloserViewController_3_Son.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class CloserViewController_3_Son: UIViewController {
    
    
    deinit {
        printLog("")
    }
    
    
    /// 第 1 / 6 步: 在CloserViewController_3_Son.swift 文件中 声明 一个闭包
    typealias changUserName = (String) -> ()
    
    
    /// 第 2 / 6 步 把这个闭包做成一个属性
    var changTextBlock: changUserName?  //把这个闭包做成属性,还是 可选的
    
    
    /// 第 3 / 6 步 写一个函数, 把闭包作为函数的参数传递进来   /或者使用实例方法调用（方法名字不固定，但参数是必须的）
    func setMyChangeName(tempClose: @escaping changUserName)  {
        
        
        
        /*
         changUserName("我有妈妈能发达")
         上面这个写法是报错的
         Non-nominal type 'CloserViewController_3_Son.changUserName' (aka '(String) -> ()') does not support explicit initialization
         */
        
        
        /*
         tempClose("我有妈妈能发达")
         如果这么写就直接传值, 调用了这个函数就能拿到值, 没有回调的意思了
         */
        
        
        /// 第 4 / 6 步 属性中的 block 和函数参数 block 指向了同一个代码空间, 但是这个代码空间还没有传递出去值
        changTextBlock = tempClose
        
        
    }
    
    
    @IBAction func backToFather(_ sender: UIButton) {
        
        /// 第 5 / 6 步 对 block 解包,然后 block 传递值  在这里调用了 block 也就是调用了代码块, 也就是调用了函数
        if let changTextBlock = changTextBlock {
            changTextBlock("我有妈妈能发达")
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "子页面"
        
    }
    
    
}
