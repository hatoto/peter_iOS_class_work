//
//  ViewController.swift
//  ThreeLayersCount
//
//  Created by hatoto on 2016/10/20.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var viewShowCountLabel: UILabel!
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        appDelegate.view1Count += 1
        viewShowCountLabel.text = String(appDelegate.view1Count)
    }
    
    
}

