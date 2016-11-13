//
//  SecondViewController.swift
//  AppDelegateTest
//
//  Created by hatoto on 2016/11/8.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UITextFieldDelegate{

    
    @IBOutlet weak var accountField: UITextField!
    
    @IBOutlet weak var pwdField: UITextField!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\(#function) textField.tag： \(textField.tag)  ")
        if( textField.tag == 10){
            let theTxtField = self.view?.viewWithTag(20) as? UITextField
            theTxtField?.becomeFirstResponder()
        }else{
            self.view.endEditing(true)
        }
        
        //收鍵盤 way 1
        //textField.resignFirstResponder()
        //收鍵盤 way 2
        //self.view.endEditing(true)
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.accountField.delegate = self
        self.pwdField.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

