//
//  Avatar.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

//Swift 可以没有父类

/// 这个是游戏里面的角色. 各种角色都继承这个类
class Avatar {
    
    ///名字
    var name: String
    
    ///血量
    var life = 100 {
        didSet{
            if self.life <= 0 {
                self.isAlive = false
            }
            if self.life > 100 {
                self.life = 100
            }
        }
    }
    
    ///是否存活
    var isAlive: Bool = true
    
    
    ///描述当前的对象
    var description: String {
        return "我是 Avatar \(name)"
    }
    
    
    
    /// 父类的超级隐藏属性 子类无法继承这个属性, 这个属性已经赋值, 在子类对象里面都会有这个东西存在, 只是无法访问, 子类继承, 只是无法访问.
    private var bug = "父类的 private 属性"
    
    /// 父类构造函数
    init(name: String) {
        
        self.name = name  //self.name 指的是属性, 就相当于 Java 里面的 this 关键字
        
    }
    
    ///函数 : 受到了攻击
    func beAttacted(attack: Int) {
        
        life -= attack
        
        if life <= 0 {
            isAlive = false
        }
    }
    
    
    /// 便利的构造函数 构造函数只是提供一种初始化的便利方法, 跟参数多少无关, 如果这个函数被设计成为 便利构造函数,  最终会调用自己的指定的构造函数!
    /// 只有指定的构造函数才能调用 super.init 构造函数, 便利构造函数无法调用 super.init
    convenience init(firstName: String, lastName: String) {
        
        self.init(name: "\(firstName) \(lastName)")
    }
    
    
}















