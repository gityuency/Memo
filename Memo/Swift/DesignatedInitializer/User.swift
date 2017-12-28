
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
    
    
    
    /// 玩家升级  使用 final 关键字修饰的函数将不能被子类重写 
    final func getScore(score: Int) {
        
        self.score += score
        if score > level * 100 {
            level += 1
        }        
    }
    
    
    
}

