//
//  ViewController.swift
//  Memo
//
//  Created by yuency on 26/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

/// cell 重用标示
private let cellid = "ViewController_CELL_ID"


class ViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView!
    
    
    let listArray = [
        ["CloserViewController": "闭包"],
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)

        
    }
    
}



// MARK: - 实现表格的协议方法
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: 数据源
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        
        //使用字典的值作为标题
        cell.textLabel?.text = "\(indexPath.row + 1) \(Array(listArray[indexPath.row].values)[0])"
        cell.textLabel?.textColor = UIColor(red:0.25, green:0.25, blue:0.25, alpha:1.00)
        return cell
    }
    
    //MARK: 事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //因为字典的 key 就是将要 push 进来的控制器的名字
        let vcName = Array(listArray[indexPath.row].keys)[0]
        
        //把这个 key 转换成为类 需要加上命名空间前缀,否则不生效
        if let cls = NSClassFromString(Bundle.main.nameSpaceStirng + "." + vcName) as? UIViewController.Type {
            let vc = cls.init()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}



