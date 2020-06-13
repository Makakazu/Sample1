//
//  FirstViewController.swift
//  Sample1
//
//  Created by masa.miura on 2020/05/25.
//  Copyright © 2020 miura. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var uke_koteihi = 0//iputform受取用
    var uke_other_cost = 0//inputform受取用
    var arrstring: Array<String> = []
      
      struct data {//構造体(一ヶ月単位)
          var koteihi: Int//固定費
          var ryudouhi: Int//数字
        var other_cost = Array(repeating:0,count:31)//1日ごとの
          
          init(koteihi: Int, ryudouhi: Int) {
              self.koteihi = koteihi
              self.ryudouhi = ryudouhi
                      
          }
          
      }
      
      //data型の変数宣言
      var data_strings = [data]()
      
      
    @IBOutlet weak var test: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        test.text = String(uke_koteihi)
        
        //背景設定
        self.view.addBackground(name: "backgroundimage.jpg")
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
