//
//  DIViewController.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

/*
 
 结构体不能继承!
 
 
 
 
 
 */


class DIViewController: UIViewController {

    deinit {
        printLog("")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor().randomColor

        
        
        let player = User(name: "王小明") // 当前这个构造函数是父类的构造函数
        print("\(player.name)  \(player.score) \(player.isAlive)")
        
        
        player.beAttacted(attack: 20)
        print("\(player.life)")
        
        player.getScore(score: 200)
        print("\(player.level)")
        
        
        let magician = Magician(name: "哈利波特")
        print("\(magician.life) \(magician.name)  \(magician.score) \(magician.isAlive) \(magician.level) \(magician.magic)")
        
        
        
        
        
        
        
        
        
        
        
        
    }

   
}
