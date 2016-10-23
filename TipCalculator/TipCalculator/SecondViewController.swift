//
//  SecondViewController.swift
//  TipCalculator
//
//  Created by hatoto on 2016/10/22.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var resultAmt: UILabel!
    @IBOutlet weak var resultTip: UILabel!
    @IBOutlet weak var resultBill: UILabel!
    @IBOutlet weak var resultPerPer: UILabel!
    
    
    @IBOutlet weak var amount: UITextField!
    
    //稅前金額變動時的func
    @IBAction func amountChange(_ sender: UITextField) {
        thingsChange()
    }
    //稅率變動時的func
    @IBAction func taxChange(_ sender: UISlider) {
        sliderChange(slider: 100, textLa: 150)
        thingsChange()
    }
    //小費比率變動時的func
    @IBAction func tipChange(_ sender: UISlider) {
        sliderChange(slider: 200, textLa: 250)
        thingsChange()
    }
    //人數變動時的func
    @IBAction func peopleChange(_ sender: UISlider) {
        sliderChange(slider: 300, textLa: 350)
        thingsChange()
    }
    
    //每個可調整數值元件的數值變動時會呼叫的function
    func thingsChange(){
        
        let amtValueField = self.view?.viewWithTag(50) as? UITextField
        let taxLabel = self.view?.viewWithTag(150) as? UILabel
        let tipLabel = self.view?.viewWithTag(250) as? UILabel
        let peopleLabel = self.view?.viewWithTag(350) as? UILabel
        
        let amtValue = ( amtValueField!.text!.isEmpty ) ? Double(0) : Double(amtValueField!.text!)
        
        let taxValue = Double(taxLabel!.text!)
        let tipValue = Double(tipLabel!.text!)
        let peopleValue = Double(peopleLabel!.text!)
        let afterTaxtDouble = amtValue!.adding((amtValue! * (taxValue!/100)))
        
        let resultTipDouble = amtValue! * tipValue!/100
        
        resultAmt.text = String(afterTaxtDouble)
        resultTip.text = String(resultTipDouble)
        
        let total = afterTaxtDouble.adding(resultTipDouble)
        resultBill.text = String(total)
        resultPerPer.text = String( total / peopleValue! )
    }
    
    
    
    
    
    
    // 以元件tag id取得Slider和對應的Label
    func sliderChange(slider: Int, textLa: Int){
        let theSlider = self.view?.viewWithTag(slider) as? UISlider
        let theLabel = self.view?.viewWithTag(textLa) as? UILabel
        theLabel?.text = String(Int((theSlider?.value)!))
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amount.delegate = self
        sliderChange(slider: 100, textLa: 150) //Tax % Slider & Label
        sliderChange(slider: 200, textLa: 250) //Tip % Slider & Label
        sliderChange(slider: 300, textLa: 350) //People Slider & Label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }

}

