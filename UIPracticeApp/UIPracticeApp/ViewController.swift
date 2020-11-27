//
//  ViewController.swift
//  UIPracticeApp
//
//  Created by Naoyuki Kan on 2020/11/17.
//  Copyright © 2020 Naoyuki Kan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(sender : Any){
        performSegue(withIdentifier: "toSubViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "toSubViewController"){
            let vc2: SubViewController = (segue.destination as? SubViewController)!
            vc2.textVC2 = "to VC2"
        }
    }

}

