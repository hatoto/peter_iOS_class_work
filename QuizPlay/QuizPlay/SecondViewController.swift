//
//  SecondViewController.swift
//  QuizPlay
//
//  Created by hatoto on 2016/10/23.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func doShowAns(_ sender: AnyObject) {
        answerLabel.text = quizArray[quizNumber].ans
    }
    
    @IBAction func nextQ(_ sender: AnyObject) {
        if quizNumber < 9 {
             quizNumber = quizNumber + 1
        }else{
            quizNumber = 0
        }
        displayQuiz()
    }
    
    
    var quizArray :[(quiz: String, ans: String)] = []
    var quizNumber : Int = 0
    
    func displayQuiz(){
       questionLabel.text = quizArray[quizNumber].quiz
       answerLabel.text = ""
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizArray.append(("偷什麽東西不犯法？","偷笑"))
        quizArray.append(("哪一個月有二十八天？","每個月都有28天"))
        quizArray.append(("誰是萬獸之王？","動物園園長"))
        quizArray.append(("什麽帽不能戴？","螺帽"))
        quizArray.append(("把一隻雞和一隻鵝同時放在冰山上，爲什麽雞死了鵝沒死？","鵝是企鵝"))
        quizArray.append(("世界上最小的島是什麽","馬路上的安全島"))
        quizArray.append(("早晨醒來，每個人都要做的第一件事是什麽？","睜開眼睛"))
        quizArray.append(("哪兒的海不產魚","辭海"))
        quizArray.append(("黑人不必擔心哪一件事","曬黑"))
        quizArray.append(("什麼地方能出生入死","醫院"))
       
        displayQuiz()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

