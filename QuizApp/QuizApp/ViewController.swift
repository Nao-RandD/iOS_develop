//
//  ViewController.swift
//  QuizApp
//
//  Created by Naoyuki Kan on 2020/11/27.
//  Copyright © 2020 Naoyuki Kan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 他ViewController上のSegueの行き先がExitとした場合の遷移場所とするためのメソッド
    @IBAction func backToTitle(sender: UIStoryboardSegue){
        // 処理は書かない。ボタンから戻るためのメソッドになる
    }

}

