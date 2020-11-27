//
//  QuizViewController.swift
//  QuizApp
//
//  Created by Naoyuki Kan on 2020/11/27.
//  Copyright © 2020 Naoyuki Kan. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    let total = 10 // 問題数
    var correct = 0 // 正解数
    var questionIndex = 0 // 問題番号
    var answerIndex = 0 // 正解番号
    
    @IBOutlet var leftNumberLabel: UILabel!
    @IBOutlet var centerNumberLabel: UILabel!
    @IBOutlet var rightNumberLabel: UILabel!
    
    // Viewが読み込まれたときの処理
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setQuestions() // 問題をセットする
    }
    
    // 四則演算記号ボタンが押されたときの処理
    @IBAction func tapped(sender: UIButton){
        // Senderに振られているTagに沿って解答（answerIndex）と一致しているか確認
        if sender.tag - 1 == answerIndex{
            correct += 1
        }
        
        questionIndex += 1 // 問題数を追加する
        
        // 指定の問題数をこなしていたら結果画面に遷移
        if questionIndex >= total{
            // 結果表示に遷移するためにSegueを指定して結果画面に遷移する
            performSegue(withIdentifier: "QuizToResult", sender: nil)
        }else{
            setQuestions()
        }
    }
    
    // 次の画面に遷移する際に実行されるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // 次の画面のSegueにアクセスする
        if let resultVC = segue.destination as? ResultViewController{
            resultVC.result = Double(correct)/Double(total) * 100.0
        }
    }

    // 問題をセットして
    func setQuestions(){
        let leftNum = Int(arc4random_uniform(10))
        var centerNum = Int(arc4random_uniform(10))
        
        answerIndex = Int(arc4random_uniform(4))
        switch answerIndex {
        case 0:
            rightNumberLabel.text = "\(leftNum + centerNum)"
        case 1:
            rightNumberLabel.text = "\(leftNum - centerNum)"
        case 2:
            rightNumberLabel.text = "\(leftNum * centerNum)"
        default:
            if centerNum == 0{
                centerNum = 1
            }
            rightNumberLabel.text = "\(leftNum / centerNum)"
        }
        
        leftNumberLabel.text = "\(leftNum)"
        centerNumberLabel.text = "\(centerNum)"
    }
}
