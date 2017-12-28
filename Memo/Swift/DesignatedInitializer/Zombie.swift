//
//  Zombie.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

/// 僵尸类, 继承 自怪兽类
final class Zombie: Monster {
    
    /* 在子类中重新定义来覆盖原有的逻辑 */
    /// 描述当前的对象  这也是一种 重写
    override var description: String {
        return "我是 Zombie \(name)"
    }
    
    
    
    var type = "默认Type"
    
    
}
