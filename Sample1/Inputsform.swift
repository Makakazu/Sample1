//
//  Inputsform.swift
//  Sample1
//
//  Created by masa.miura on 2020/06/08.
//  Copyright © 2020 miura. All rights reserved.
//



import UIKit

class Inputsform: UIViewController {

    var seikatu = 0
    
    

    
    @IBOutlet weak var Inputdata: UITextField!
    


    @IBAction func Seikathuhi(_ sender: Any) {
        seikatu = Int(Inputdata.text!)!
        Inputdata.text = ""
    }
    
    

    @IBAction func backcalendar(_ sender: Any) {
        performSegue(withIdentifier: "tocalendar",sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //背景設定
          self.view.addBackground(name: "backgroundimage.jpg")
        
        
        
        //キーボード変更(数字のみ)
               Inputdata.keyboardType = UIKeyboardType.numberPad
               
       
    }
    
    
    
    
    
    // MARK//: - Navigation

   
    //別ページに値を渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "tocalendar"){
            //渡す値を記載...
        }
        
    }
    
    
    //キーボードを閉じる
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
