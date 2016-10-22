//
//  FirstViewController.swift
//  QuizPlay
//
//  Created by hatoto on 2016/10/23.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var theAnswer: Int = 0
    var theCount : Int = 0
    
    @IBOutlet weak var numberGuess: UITextField!
    
    
    @IBOutlet weak var guessCount: UILabel!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBAction func doGuess(_ sender: AnyObject) {
        
        if !guessCount.text!.isEmpty {
            theCount = theCount + 1
            guessCount.text = String(theCount)
            
            let numberGuessed = Int(numberGuess.text!)
            
            if theCount <= 6 {
                
                if numberGuessed! > theAnswer {
                    resultLabel.textColor = UIColor.purple
                    resultLabel.text = "答錯，太大了"
                }else if numberGuessed! < theAnswer {
                    resultLabel.textColor = UIColor.purple
                    resultLabel.text = "答錯，太小了"
                }else{
                    resultLabel.textColor = UIColor.red
                    resultLabel.text = "恭喜，答對了！"
                }
                
                
            }else{
                resultLabel.textColor = UIColor.orange
                resultLabel.text = "不能再猜了"
            }
        
        }else{
            resultLabel.textColor = UIColor.orange
            resultLabel.text = "要輸入數字喔！"
        }
        
        
        
        
    }
    
    
    @IBAction func reStart(_ sender: AnyObject) {
        creatAnswer()
        theCount = 0
        guessCount.text = String(theCount)
        resultLabel.text = ""
        numberGuess.text = ""
        
    }
    
    
    func creatAnswer(){
        theAnswer = Int(arc4random_uniform(151))
        if 0 == theAnswer {
            theAnswer = 1
        }
        print("theAns: \(theAnswer)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatAnswer()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

