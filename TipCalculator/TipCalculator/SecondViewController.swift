//
//  SecondViewController.swift
//  TipCalculator
//
//  Created by hatoto on 2016/10/22.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var resultAmt: UILabel!
    
    @IBOutlet weak var resultTip: UILabel!
    
    @IBOutlet weak var resultBill: UILabel!
    
    
    @IBOutlet weak var resultPerPer: UILabel!
    
    
    
    
    @IBAction func amountChange(_ sender: UITextField) {
        thingsChange()
    }
    
    @IBAction func taxChange(_ sender: UISlider) {
        sliderChange(slider: 100, textLa: 150)
        thingsChange()
    }
    
    @IBAction func tipChange(_ sender: UISlider) {
        sliderChange(slider: 200, textLa: 250)
        thingsChange()
    }
    
    
    @IBAction func peopleChange(_ sender: UISlider) {
        sliderChange(slider: 300, textLa: 350)
        thingsChange()
    }
    
    
    
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
    
    
    
    
    
    
    
    func sliderChange(slider: Int, textLa: Int){
        print("sliderChange, \(slider) , \(textLa)")
        let theSlider = self.view?.viewWithTag(slider) as? UISlider
        
        print("sliderbar value, \(theSlider?.value) ")
        let theLabel = self.view?.viewWithTag(textLa) as? UILabel
        
        theLabel?.text = String(Int((theSlider?.value)!))

    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderChange(slider: 100, textLa: 150)
        sliderChange(slider: 200, textLa: 250)
        sliderChange(slider: 300, textLa: 350)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

