//
//  CloserViewController.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//


/*
 闭包和函数都是引用类型
 
 函数的返回值可以是闭包
 */


import UIKit

class CloserViewController: UIViewController {
    
    
    deinit {
        printLog("")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "闭包"
        
        
        
        //给数组添加东西
        for _ in 0..<100 {
            arr.append(Int(arc4random() % 1000))
        }
        
        
        //给数组排序
        arr.sort(by: biggerNumberFirst(a:b:)) //传递了一个函数
        print(arr)
        
        
        /*闭包本质就是一个函数, 既然可以传递函数, 那么就可以传递闭包*/
        
        
        //给数组排序
        arr.sort(by: { (a:Int, b:Int) -> Bool in
            return a > b
        })
        
        
        //给数组排序
        arr.sort(by: {a, b in return a > b})
        
        
        //给数组排序
        arr.sort(by: {$0 > $1})
        
        
        //给数组排序  ">" 大于号本身就是一个函数
        arr.sort(by: > )
        
        
        //当我们的闭包是一个函数最后传递的参数的时候, 这时候可以使用结尾闭包
        arr.sort(by:) { a, b in
            return a > b
        }
        
        arr.sort { a, b in   //小括号都可以直接省略掉
            return a > b
        }
        
        
        //内容捕获
        let num: Int32 = 700   //这个 numn 没有定义在闭包里面, 但是却能够被这个闭包拿到这个值 -> 闭包内容捕获  这里捕获的是放在外面的"数值"
        arr.sort { a, b in
            let k = Int(num)
            return abs(a - k) < abs(b - k) //找出距离 numn 最近的值
        }
        print(arr)
        
        
        
        //闭包和函数都是引用类型
        var planA = runnMetersPerDay(meters: 2000)
        print(planA())  //我们调用的 planA() 实际就是调用的 runnMetersPerDay()这个函数里面的闭包. 结果形成了累加,
        print(planA())
        print(planA())
        
        
        
        var planB = runnMetersPerDay(meters: 5000)
        print(planB())
        print(planB())

        
        var antherPlan = planB  //加了小括号表示调用这个函数, 没有加小括号表示把这个东西传递
        print(antherPlan())
        print(planB())         //这里可以区分值类型还是引用类型 结果是 20000, 给原有的变量取了另外一个名字而已, 他们指向的都是同一个内存空间
        
        
    }
    
    
    /// 声明了一个数组 你不觉得这个方法更鸡贼吗
    var arr: [Int] = []
    
    
    func biggerNumberFirst(a: Int, b: Int) -> Bool {
        return a > b
    }
    
    
    
    /*
     函数的返回值可以是闭包
     */
    func runnMetersPerDay(meters: Int) -> () -> Int {
        
        var totalMeters = 0
        
        return {
            totalMeters += meters  //这个闭包使用了内容捕获
            return totalMeters
        }
    }

    
    
    
    
}
