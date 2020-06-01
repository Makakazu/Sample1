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
    
    
    
    
    
    
    //コメント追加したよ
    
    
    
    

    
    //日付入力
    @IBOutlet weak var dateSelecter: UITextField!
    //入力用
    @IBOutlet weak var Inputs: UITextField!
    //表示用
    @IBOutlet weak var display: UITextField!
    
    //日付の選択方法
    var datePicker: UIDatePicker = UIDatePicker()
    
    //更新
    @IBAction func renew(_ sender: Any) {
        let strarray:String =  dateSelecter.text!
        fioh(stremp: strarray,intemp: 1)//更新動作
        
    }
    
    
    //保存
    
    @IBAction func keep(_ sender: Any) {
        let strarray:String =  dateSelecter.text!
        fioh(stremp: strarray, intemp: 0)//保存動作
        display.text = "保存しました"
        
    }
    
    //保存、更新の動作
    @objc func fioh(stremp: String, intemp: Int){
       
        for i in 0..<data_strings.count{//更新動作
            if data_strings[i].date == stremp{//以前に入力がある
                total = data_strings[i].datanum
                
                display.text = String(total)//表示
                //日付、数字のデータをコピー後、要素削除
                data_strings.remove(at: i)
                return
            }
        }
        if intemp == 0{//保存動作
            data_strings.append(data(date: stremp, datanum: total))
            total = 0
            display.text = String(total)//表示
            return
        }
         
    }
    
    
    
    //加算
    
    @IBAction func plus(_ sender: Any) {
        if Inputs.text == ""{//エラー処理
             Inputs.text = "0"
         }
        total = total + Int(Inputs.text!)!//合計の計算
         display.text = String(total)//表示
         
         //中身をクリア
         Inputs.text =  ""
    }
    
    
    
    //減算
    
    @IBAction func minus(_ sender: Any) {
        if Inputs.text == ""{//エラー処理
            Inputs.text = "0"
        }
        total = total - Int(Inputs.text!)!//合計の計算
        display.text = String(total)//表示
        //中身をクリア
        Inputs.text =  ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //背景設定
          self.view.addBackground(name: "backgroundimage.jpg")
        
          
          // ピッカー設定
          datePicker.datePickerMode = UIDatePicker.Mode.date
          datePicker.timeZone = NSTimeZone.local
          datePicker.locale = Locale.current
          dateSelecter.inputView = datePicker
          
          //決定バーの作成
          let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
          let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
          let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
          toolbar.setItems([spacelItem, doneItem], animated: true)
          
          // インプットビュー設定
          dateSelecter.inputView = datePicker
          dateSelecter.inputAccessoryView = toolbar
          
          // デフォルト日付(いずれも今日)
          let formatter = DateFormatter()
          formatter.dateFormat = "yyyy-MM-dd"
          datePicker.date = formatter.date(from: "\(formatter.string(from: Date()))")!
          dateSelecter.text = "\(formatter.string(from: Date()))"
          
          
          //キーボード変更(数字のみ)
          Inputs.keyboardType = UIKeyboardType.numberPad
        
    }

    // 決定ボタンを実行(Done)
     @objc func done() {
         
         dateSelecter.endEditing(true)
    
         // 日付のフォーマット
         let formatter = DateFormatter()
         formatter.dateFormat = "yyyy-MM-dd"
         dateSelecter.text = "\(formatter.string(from: datePicker.date))"
         
         display.text = ""
         
             }
     
     
     //キーボードを閉じる
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
     }
     
    
    

}

