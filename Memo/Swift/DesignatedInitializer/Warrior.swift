//
//  Warrior.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

/// 战士类, 继承自 玩家,
final class Warrior: User {
    
    /* 在子类中重新定义来覆盖原有的逻辑 */
    /// 描述当前的对象  这也是一种 重写
    override var description: String {
        return "我是 Warrior \(name)"
    }
    
    /// 重写了展示收到攻击的方法
    override func beAttacted(attack: Int) {
        self.life -= attack / 2
    }
    
    
    /// 战士用的武器
    var weapon: String
    
    
    
    /* 父类的属性, 必须通过父类的构造函数进行构造 */
    /// 子类的构造函数同时涉及到父类的属性的话, Swift 使用两段式构造
    init(name: String, group: String, weapon: String) {
        
        // 第一步 先初始化子类的属性
        self.weapon = weapon
        
        // 第二步 然后初始化父类的属性
        super.init(name: name, group: group)
        
    }
    
}
