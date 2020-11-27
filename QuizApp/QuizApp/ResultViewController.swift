//
//  ResultViewController.swift
//  QuizApp
//
//  Created by Naoyuki Kan on 2020/11/27.
//  Copyright © 2020 Naoyuki Kan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var result = 0.0
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    
    // 
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "\(round(result))%"
        
        if result < 50{
            messageLabel.text = "PLEASE TRY AGAIN!"
        }else if result < 80{
            messageLabel.text = "NICE!"
        }else{
            messageLabel.text = "YOU ARE GREAT!"
        }
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
