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


    ///给同伴治疗
    func heal(user: User) {
        user.life += 10
    }
    

}
