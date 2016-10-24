//
//  ViewController.swift
//  ThreeLayersCount
//
//  Created by hatoto on 2016/10/20.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var viewShowCountLabel2: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(#file)\(#function)")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("\(#file)\(#function)")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("\(#file)\(#function)")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#file)\(#function)")
        appDelegate.view2Count += 1
        
        viewShowCountLabel2.text = String(appDelegate.view2Count)
        
    }
}

