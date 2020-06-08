//
//  ViewController.swift
//  Sample1
//
//  Created by masa.miura on 2020/05/25.
//  Copyright © 2020 miura. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate {
    
    var total = 0 //計算結果を格納する変数
  var arrstring: Array<String> = []
    
    struct data {//構造体
        var date: String//日付
        var datanum: Int//数字
        
        init(date: String, datanum: Int) {
            self.date = date
            self.datanum = datanum
                    
        }
        
    }
    
    //data型の変数宣言
    var data_strings = [data]()
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //背景設定
          self.view.addBackground(name: "backgroundimage.jpg")
        
          
          
          
          
          /*キーボード変更(数字のみ)
          Inputs.keyboardType = UIKeyboardType.numberPad
        */
    }

    
     
     
     /*キーボードを閉じる
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
     }
     */
    
    

}

