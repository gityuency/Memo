
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
    
    /// 玩家升级
    func getScore(score: Int) {
        
        self.score += score
        if score > level * 100 {
            level += 1
        }        
    }
    
    
    
}

