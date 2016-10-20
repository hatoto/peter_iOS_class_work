//
//  InfoViewController.swift
//  Demo
//
//  Created by hatoto on 2016/10/20.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var horoscope: UITextField!
    
    @IBOutlet weak var sex: UISegmentedControl!
    
    @IBOutlet weak var trueHeart: UISwitch!
    
    @IBAction func ageSlide(_ sender: UISlider) {
        ageLabel.text = String(Int(sender.value))
    }
    
    
    @IBOutlet weak var youOrNot: UISegmentedControl!
    
    @IBAction func isThatYou(_ sender: AnyObject) {
        
        let sexStr = sex.titleForSegment(at: sex.selectedSegmentIndex)
        
        print("horoscope.text: \(horoscope.text)")
        print("sex: \(sexStr)")
        print("trueHeart: \(trueHeart.isOn)")
        print("age: \(ageLabel.text)")
        
        
        youOrNot.isHidden = false
        
        if ( Int(ageLabel.text!)! < 30 && sexStr! == "女" ){
            print("you")
            youOrNot.selectedSegmentIndex = 0
        }else{
            print("not you")
            youOrNot.selectedSegmentIndex = 1
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "30"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
