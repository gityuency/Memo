//
//  Father.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

class Father {
    
    
    /// 父类指定的构造函数 1
    init(designatedOne: String) {
        printLog("")
    }
    
    
    
    /// 父类指定的构造函数 2
    init(designatedTwo: String) {
        printLog("")
        
    }
    
    
    /// 父类指定的构造函数 3
    init(designatedThree: String) {
        printLog("")
        
    }
    
    
    /// 父类的便利构造函数 1
    convenience init(convenienceOne: String) {
        self.init(designatedOne: "肥料流失蒸发")
        printLog("")
        
    }
    
    
}

