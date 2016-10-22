//
//  InfoViewController.swift
//  Demo
//
//  Created by hatoto on 2016/10/20.
//  Copyright © 2016年 hatotoINC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    
    let horoscopeDict = ["牡羊座":"Aries","金牛座":"Taurus","雙子座":"Gemini","巨蟹座":"Cancer",	"獅子座":"Leo","處女座":"Virgo","天秤座":"Libra","天蠍座":"Scorpio","射手座":"Sagittarius",
        "魔羯座":"Capricorn","水瓶座":"Aquarius","雙魚座":"Pisces"]
    
    
    
    
    var horoscopeTZArr: [String] = []
    
    // 建立 UIPickerView
    let myPickerView : UIPickerView = UIPickerView()
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var horoscope: UITextField!
    
    @IBOutlet weak var sex: UISegmentedControl!
    
    @IBOutlet weak var trueHeart: UISwitch!
    
    @IBAction func ageSlide(_ sender: UISlider) {
        ageLabel.text = String(Int(sender.value))
    }
    
    @IBOutlet weak var ageSlideOutlet: UISlider!
    
    @IBOutlet weak var youOrNot: UISegmentedControl!
    
    @IBAction func isThatYou(_ sender: AnyObject) {
        
        let sexStr = sex.titleForSegment(at: sex.selectedSegmentIndex)
        
        youOrNot.isHidden = false
        
        let fineHoroscopes = ["Cancer","Taurus","Pisces","Aquarius","Virgo"]
        
        let selectedHoroInEng = horoscopeDict[horoscope.text!]!
        
        let isRightScopt = fineHoroscopes.contains(selectedHoroInEng)
        
        print("horoscope in eng: \(selectedHoroInEng)")
        print("horoscope.text: \(horoscope.text!)")
        print("sex: \(sexStr)")
        print("trueHeart: \(trueHeart.isOn)")
        print("age: \(ageLabel.text)")
        print("isRightScopt: \(isRightScopt)")
        
        if ( isRightScopt && Int(ageLabel.text!)! <= 30 && sexStr! == "女" && trueHeart.isOn){
            youOrNot.selectedSegmentIndex = 0
        }else{
            youOrNot.selectedSegmentIndex = 1
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        horoscopeTZArr = [String](horoscopeDict.keys)
        inti()
    }
    
    
    func inti(){
        // 設定 UIPickerView 的 delegate 及 dataSource
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        // 將 UITextField 原先鍵盤的視圖更換成 UIPickerView
        horoscope.inputView = myPickerView
        
        // 設置 UITextField 預設的內容
        horoscope.text = horoscopeTZArr[0]
        
        // 設置 UITextField 的 tag 以利後續使用
        horoscope.tag = 100

        // 增加一個觸控事件
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.hideKeyboard(_:)))
        
        tap.cancelsTouchesInView = false
        
        // 加在最基底的 self.view 上
        self.view.addGestureRecognizer(tap)
    }
    
    
    
    
    
    
    // UIPickerViewDataSource 必須實作的方法：UIPickerView 有幾列可以選擇
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // UIPickerViewDataSource 必須實作的方法：UIPickerView 各列有多少行資料
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // 返回陣列 horoscopeTZArr 的成員數量
        return horoscopeTZArr.count
    }
    
    // UIPickerView 每個選項顯示的資料
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // 設置為陣列 horoscopeTZArr 的第 row 項資料
        return horoscopeTZArr[row]
    }
    
    // UIPickerView 改變選擇後執行的動作
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 依據元件的 tag 取得 UITextField
        let myTextField = self.view?.viewWithTag(100) as? UITextField
        
        // 將 UITextField 的值更新為陣列 meals 的第 row 項資料
        myTextField?.text = horoscopeTZArr[row]
    }

    
    
    
    
    // 按空白處會隱藏編輯狀態
    func hideKeyboard(_ tapG:UITapGestureRecognizer){
        self.view.endEditing(true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ageLabel.text = String(Int(ageSlideOutlet.value))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
