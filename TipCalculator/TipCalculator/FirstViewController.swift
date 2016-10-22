//
//  FirstViewController.swift
//  TipCalculator
//
//  Created by hatoto on 2016/10/22.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var cost: UITextField!
    
    
    @IBOutlet weak var tipRate: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func doCal(_ sender: UIButton) {
        
        print("cost is blank: \(cost.text!.isEmpty)")
        print("tip rate is blank \(tipRate.text!.isEmpty)")
        
        resultLabel.textColor = UIColor.red

        
        if( cost.text!.isEmpty && tipRate.text!.isEmpty ){
            resultLabel.text = "要輸入計算條件！！"
        }else if( cost.text!.isEmpty  ){
            resultLabel.text = "消費金額未填！！"
        }else if ( tipRate.text!.isEmpty ){
            resultLabel.text = "小費比例未填！！"
        }else{
            let theCost = Double(cost.text!)
            let theRate = Double(tipRate.text!)! / 100
            
            resultLabel.textColor = UIColor.blue
            
            resultLabel.text = "小費：" + String(theCost! * theRate)
            
        }
        
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        textField.resignFirstResponder()
        return false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

