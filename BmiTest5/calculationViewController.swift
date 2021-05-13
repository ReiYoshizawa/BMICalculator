//
//  calculationViewController.swift
//  BmiTest5
//
//  Created by ヨシザワレイ on 2021/04/28.
//

import UIKit

class calculationViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultCountLabel: UILabel!
    
    var resultValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = resultValue
        
      
        }
   
    
    
    
}
