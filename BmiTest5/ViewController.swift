//
//  ViewController.swift
//  BmiTest5
//
//  Created by ヨシザワレイ on 2021/04/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2つのテキストフィールドの中にサーポート文字を表示させる
        heightTextField.placeholder = "身長を入力してください"
        weightTextField.placeholder = "体重を入力してください"
        
    }
    // segueが動作することをViewControllerに通知するメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // segueのIDを確認して特定のsegueのときのみ動作させる
        if segue.identifier == "toCalculationViewController"{
            
            // 遷移先のViewControllerを取得
            let next = segue.destination as? calculationViewController
            
            //テキストフィールドの型を指定する
            let heightValue = Double(heightTextField.text!)
            let weightValue = Double(weightTextField.text!)
            
            next?.resultValue = formulation(height: Double(heightValue!), weight: Double(weightValue!))
        }
            
    }

    @IBAction func calculationButton(_ sender: Any) {
        
        performSegue(withIdentifier: "toCalculationViewController", sender: nil)
        
        }
  
    
    func formulation(height: Double, weight: Double) -> String {
        
    let calcH = height / 100
    let calcW = weight
    var result = calcW / (calcH * calcH)
    result = floor(result * 10) / 10
    return result.description
    
    }
   
}
