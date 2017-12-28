//
//  CloserViewController_4_Father.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class CloserViewController_4_Father: UIViewController {
    
    deinit {
        printLog("")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func goNextController(_ sender: Any) {
        
        let son = CloserViewController_4_Son()
        
        //在这里写上 block 的实现
        son.sonBlock = { string in
            print("爸爸知道了 \(string)")
        }
        
        navigationController?.pushViewController(son, animated: true)
    }
    
    
    
    
    
    
}
