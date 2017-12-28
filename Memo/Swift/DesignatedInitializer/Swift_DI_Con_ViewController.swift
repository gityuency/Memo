//
//  Swift_DI_Con_ViewController.swift
//  Memo
//
//  Created by yuency on 28/12/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class Swift_DI_Con_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let father_1 = Father(designatedOne: "第1个 爸爸")
        
        let father_2 = Father(designatedTwo: "第2个 爸爸")
        
        let father_3 = Father(designatedThree: "第3个 爸爸")
        
        let father_4 = Father(convenienceOne: "第4个 爸爸")
        
    
        let son_1 = Son(designOne: "")
        
        let son_2 = Son(designTwo: "")
        
        
        
    }
}
