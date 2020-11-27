//
//  SubViewController.swift
//  UIPracticeApp
//
//  Created by Naoyuki Kan on 2020/11/17.
//  Copyright © 2020 Naoyuki Kan. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var textVC2:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = textVC2
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
