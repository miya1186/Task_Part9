//
//  NextViewController.swift
//  Task9
//
//  Created by miyazawaryohei on 2020/08/15.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    let place = ["東京","神奈川","埼玉","千葉"]
    var num = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func selectButton(_ sender: Any) {
        
     switch (sender as AnyObject).tag {
        case 0:
            number(num: 0)
        case 1:
            number(num: 1)
        case 2:
            number(num: 2)
        case 3:
            number(num: 3)
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC = segue.destination as! ViewController
        VC.label.text = place[num]
    }
    
        //switchの処理をメソッドにまとめました
        func number(num: Int){
        self.num = num
        performSegue(withIdentifier: "Segue", sender: nil)
    }
}















