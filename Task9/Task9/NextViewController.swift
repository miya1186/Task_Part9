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
            num = 0
            performSegue(withIdentifier: "Segue1", sender: sender)
        case 1:
            num = 1
            performSegue(withIdentifier: "Segue2", sender: sender)
        case 2:
            num = 2
            performSegue(withIdentifier: "Segue3", sender: sender)
        case 3:
            num = 3
            performSegue(withIdentifier: "Segue4", sender: sender)
            
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC = segue.destination as! ViewController
        VC.label.text = place[num]
    }
    
}















