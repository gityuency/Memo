
//
//  User.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

/// 游戏里面的玩家角色类
class User: Avatar {  //玩家继承了游戏角色这个类
    
    /// 玩家得分
    var score = 0
    
    /// 玩家等级
    var level = 0
    
    
    
    /* 在子类中重新定义来覆盖原有的逻辑 */
    /// 描述当前的对象  这也是一种 重写
    override var description: String {
        return "我是 User \(name)"
    }
    
    
    /// 玩家的群组
    var group: String
    
    
    /* 父类的属性, 必须通过父类的构造函数进行构造 */
    /* 构造: 这部分的逻辑全都是在初始化当前的类的对象, 在构造没有完成的时候,是不能调用 self. 来使用所有的方法 和 其他的属性  */
    /// 子类的构造函数同时涉及到父类的属性的话, Swift 使用两段式构造
    init(name: String, group: String) {

        // 第一步 先初始化子类的属性
        self.group = group
    
        // 第二步 然后初始化父类的属性
        super.init(name: name)
        
        //上面构造完毕, 下面可以使用  ->  两段式构造
        
        if group == "" {
            self.getScore(score: -10)
        }
        
        
        
    }
    
    
    
    
    /// 玩家升级  使用 final 关键字修饰的函数将不能被子类重写
    final func getScore(score: Int) {
        
        self.score += score
        if score > level * 100 {
            level += 1
        }        
    }
    
    
    
}

