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
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cost.delegate = self
        tipRate.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

