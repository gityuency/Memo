//
//  Son.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import Foundation

class Son: Father {
    
    /// 子类重写的父类构造函数
    override init(designatedOne: String) {
        printLog("子类重写了父类的构造函数")
        
        super.init(designatedThree: "")
    }
    
    
    
    /*
     如果子类不写任何构造函数, 将会继承父类所有的构造函数 (指定 / 便利)
     */
    
    
    /// 子类自己的构造函数 1
    init(designOne: String){
        
        super.init(designatedOne: "我不信")
        
        printLog("")
    }
    
    /// 子类自己的构造函数 2
    init(designTwo: String) {
        
        //super.init(designatedOne: "我不信")
        super.init(designatedTwo: "")
        
        printLog("")
    }
    
    
    
    
    
    
    
    
}
