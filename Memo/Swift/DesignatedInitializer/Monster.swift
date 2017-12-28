//
//  Monster.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

/// 怪兽类, 继承 自角色类
class Monster: Avatar {
    
    
    /* 在子类中重新定义来覆盖原有的逻辑 */
    /// 描述当前的对象  这也是一种 重写
    override var description: String {
        return "我是 Monster \(name)"
    }
    
    
    /// 怪兽攻击玩家
    func attack(user: User, amount: Int)  {
        user.beAttacted(attack: amount)
    }
    
}

