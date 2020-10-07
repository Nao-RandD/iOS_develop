//
//  ViewController.swift
//  CameraApp
//
//  Created by Naoyuki Kan on 2020/10/07.
//  Copyright © 2020 Naoyuki Kan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // imageViewへの処理
    @IBOutlet weak var photoImage: UIImageView!
    
    // カメラ起動ボタンへの処理
    @IBAction func cameraLaunchAction(_ sender: Any) {
        // カメラ起動へのユーザー許可があるか確認する処理
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("Camera can be used")
            
            // カメラからデータを取得するインスタンス
            let ipc = UIImagePickerController()
            ipc.sourceType = .camera
            // 写真を取った後にどの関数を実行するか
            ipc.delegate = self
            // 表示に関する処理　アニメーションをつけて完了後の処理はなし（Nil→NULLと同じ意味）
            present(ipc, animated:true, completion: nil)
        }else{
            print("Camera is not available.")
        }
    }
    
    // SNS投稿ボタンへの処理
    @IBAction func shareAction(_ sender: Any) {
        if let sharedImage = photoImage.image{
            let sharedItems = {sharedImage}
            let controller = UIActivityViewController(activityItems: [sharedItems], applicationActivities: nil)
            controller.popoverPresentationController?.sourceView = view
            // 表示に関する処理
            present(controller, animated: true, completion: nil)
        }
    }
    
    // 写真を撮ったあとに呼ばれるdelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Xcode10(Swift4.2)以前　info[UIImagePickerControllerOrginalImage]
        photoImage.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
    
}

