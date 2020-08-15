//
//  ViewController.swift
//  Task9
//
//  Created by miyazawaryohei on 2020/08/15.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //不要な unwind segueを削除
    @IBAction func exit(segue:UIStoryboardSegue){}
}


