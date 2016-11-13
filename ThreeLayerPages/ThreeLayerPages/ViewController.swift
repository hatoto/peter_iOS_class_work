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
        print("\(#file)\(#function)")

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
        appDelegate.view1Count += 1
        viewShowCountLabel.text = String(appDelegate.view1Count)
        
    }
    
    
}

