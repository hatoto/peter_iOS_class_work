//
//  FirstViewController.swift
//  DelegateTest
//
//  Created by hatoto on 2016/11/4.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITextFieldDelegate,
UITextViewDelegate {

    @IBOutlet weak var textFieldTextcountLabel: UILabel!
    
    @IBOutlet weak var textViewTextCountLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
        self.textView.delegate = self
    }

    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool{
        
        //限制只能輸入10個字
        let characterCountLimit = 10
        
        //每次輸入一個character時，原本textView中的字數長度
        let startingLength = textView.text?.characters.count ?? 0
        //每次輸入一個character時，新輸入的字數長度
        let lengthToAdd = text.characters.count
        //每次輸入一個character時，需要被替換掉的字數長度
        let lengthToReplace = range.length
        //newLength每次輸入文字後的總長度
        let newLength = startingLength + lengthToAdd - lengthToReplace
        
        //在編輯textView時，若按下return鍵，收鍵盤
        if (text == "\n")  {
            textView.resignFirstResponder()
            return false
        }
        if( newLength <= characterCountLimit ){
            textViewTextCountLabel.text = String(newLength)
        }
        return newLength <= characterCountLimit;
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //限制只能輸入10個字
        let characterCountLimit = 10
        
        //每次輸入一個character時，原本textField中的字數長度
        let startingLength = textField.text?.characters.count ?? 0
        //每次輸入一個character時，新輸入的字數長度
        let lengthToAdd = string.characters.count
        //每次輸入一個character時，需要被替換掉的字數長度
        let lengthToReplace = range.length
        
        //newLength每次輸入文字後的總長度
        let newLength = startingLength + lengthToAdd - lengthToReplace
        
        print("startingLength: \(startingLength)")
        print("lengthToAdd: \(lengthToAdd)")
        print("lengthToReplace: \(lengthToReplace)")
        print("newLength \(newLength)")
        if( newLength <= characterCountLimit ){
            textFieldTextcountLabel.text = String(newLength)
        }
        return newLength <= characterCountLimit
    }
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //收鍵盤 way 1
        //textField.resignFirstResponder()
        //收鍵盤 way 2
        self.view.endEditing(true)
        return true
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

