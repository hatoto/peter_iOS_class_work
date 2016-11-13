//
//  FirstViewController.swift
//  AppDelegateTest
//
//  Created by hatoto on 2016/11/8.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    @IBOutlet weak var label: UILabel!
    
    func sayHi(noti:Notification) {
        label.text = String(appDelegate.appStatusCount)
        print("Fore/Background Count: \(appDelegate.appStatusCount)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector:
            #selector(FirstViewController.sayHi(noti:)), name:
            Notification.Name.UIApplicationWillEnterForeground, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

