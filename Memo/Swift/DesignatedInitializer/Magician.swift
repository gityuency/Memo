//
//  Magician.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation


/// 魔术师, 继承自 User  这个魔术师类是这个继承链条上的最后一环, 我不希望再有任何类继承他, 就加上 final 关键字
final class Magician: User {
    
    /// 魔法值
    var magic = 100
    
    /* 在子类中重新定义来覆盖原有的逻辑 */
    /// 描述当前的对象  这也是一种 重写
    override var description: String {
        return "我是 Magician \(name)"
    }
    
    
    /// 这是一个重写的构造函数
    override init(name: String, group: String) {
        
        
        super.init(name: name, group: "魔法师的群组还没有动作!")
    }
    
    
    
    ///给同伴治疗
    func heal(user: User) {
        user.life += 10
    }
    
    
}
