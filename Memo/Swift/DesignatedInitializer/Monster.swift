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
    
    /// 怪兽攻击玩家
    func attack(user: User, amount: Int)  {
        user.beAttacted(attack: amount)
    }
    
}

