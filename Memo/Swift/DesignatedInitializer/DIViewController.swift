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
        
        
        
        //Swift 继承基础 示例代码
        //swiftBaseInherit()
        
        
        //Swift 多态 示例代码
        //swiftPolymorphic()
        
        
        //Swift 重写 属性重写
        //swiftOverride()
        
        
        //Swift 两段式构造 示例代码
        //swiftTwoInit()
        
        
        //Swift 指定的构造函数和便利构造函数
        swiftDesignConvienceInit()
        
        
        
    }
    
    
    //MARK: - Swift 指定的构造函数和便利构造函数
    func swiftDesignConvienceInit() {
        
        let player1 = Warrior(name: "武器大师", group: "艾欧尼亚") //构造函数带有默认值
        
        let player2 = Warrior(name: "艾瑞莉娅", group: "艾欧尼亚", weapon: "刀锋")
        
        
    }
    
    
    //MARK: - Swift 两段式构造 示例代码
    func swiftTwoInit() {
        
        let user = User(name: "德莱厄斯", group: "诺克萨斯")
        
        let zhanshi = Warrior(name: "无极剑圣", group: "艾欧尼亚", weapon: "刀")
    }
    
    
    
    //MARK: - Swift 重写 示例代码
    func swiftOverride() {
        
        //        let player1 = Magician(name: "哈利波特")
        //
        //        let player2 = Warrior(name: "德玛西亚")
        //
        //        let zombie = Zombie(name: "路障头僵尸")
        //
        //        let monster = Monster(name: "怪兽金古桥")
        //
        //        print(player1.description)
        //        print(player2.description)
        //        print(zombie.description)
        //        print(monster.description)
        //
        //        print("***")
        //
        //        let avatarArray: [Avatar] = [player1, player2, zombie, monster]
        //        for avatar in avatarArray {
        //            print(avatar.description)  //在实际使用的时候, 具体的方法, 具体的属性, 是根据具体的对象来进行调用的, 多态 + 重写
        //        }
        //
        //        print("***")
        //
        //        monster.attack(user: player1, amount: 20)
        //        monster.attack(user: player2, amount: 20)
        //
        //        print("\(player1.life)  \(player2.life)")
        
        
    }
    
    
    
    //MARK: - Swift 多态 示例代码
    func swiftPolymorphic() {
        
        //        let player1 = Magician(name: "哈利波特")
        //
        //        let player2 = Warrior(name: "德玛西亚")
        //
        //        let zombie = Zombie(name: "路障头僵尸")
        //
        //        let monster = Monster(name: "怪兽金古桥")
        //
        //        //开始操作了
        //        printbaisicdInfo(avatar: player1)
        //        printbaisicdInfo(avatar: player2)
        //        printbaisicdInfo(avatar: zombie)
        //        printbaisicdInfo(avatar: monster)
        //
        //
        //        // 数组放了东西
        //        let avatarArray: [Avatar] = [player1, player2, zombie, monster]
        //        for avatar in avatarArray {
        //            avatar.life -= 10
        //        }
        //
        //        // 多态治疗??
        //        player1.heal(user: player2)
        //        player1.heal(user: player1)
        
    }
    
    /// 获得角色信息
    func printbaisicdInfo(avatar: Avatar) {
        
        print("角色名字: \(avatar.name) 是否存活: \(avatar.isAlive)")
        
    }
    
    
    
    
    //MARK: - Swift 继承基础 示例代码
    func swiftBaseInherit() {
        
        //        let player = User(name: "王小明") // 当前这个构造函数是父类的构造函数
        //        print("\(player.name)  \(player.score) \(player.isAlive)")
        //
        //
        //        player.beAttacted(attack: 20)
        //        print("\(player.life)")
        //
        //        player.getScore(score: 200)
        //        print("\(player.level)")
        //
        //        let magician = Magician(name: "哈利波特")
        //        print("\(magician.life) \(magician.name)  \(magician.score) \(magician.isAlive) \(magician.level) \(magician.magic)")
        
    }
    
    
    
}
