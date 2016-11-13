//
//  SecondViewController.swift
//  DelegateTest
//
//  Created by hatoto on 2016/11/4.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var fieldA: UITextField!
    
    @IBOutlet weak var fieldB: UITextField!
    
    @IBOutlet weak var theLabel: UILabel!
    
    @IBAction func click(_ sender: AnyObject) {
        
        let textA = fieldA.text!
        let textB = fieldB.text!
        
        theLabel.text =  "\(textA) \(textB)"
        
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //收鍵盤 way 1
        //textField.resignFirstResponder()
        //收鍵盤 way 2
        self.view.endEditing(true)
        return true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fieldA.delegate = self
        self.fieldB.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

