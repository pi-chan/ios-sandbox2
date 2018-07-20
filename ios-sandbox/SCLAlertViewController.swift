//
//  ViewController.swift
//  ios-sandbox
//
//  Created by Hiromasa Ohno on 2018/07/02.
//  Copyright © 2018年 SONIC GARDEN INC. All rights reserved.
//

import UIKit
import SCLAlertView

class SCLAlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showSuccess(_ sender: Any) {
        // Get started
        SCLAlertView().showSuccess("サクセス", subTitle: "保存しました", closeButtonTitle: "閉じる")
    }
    
    @IBAction func showError(_ sender: Any) {
        SCLAlertView().showError("エラー", subTitle: "")
    }

    @IBAction func showConfirm(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alert = SCLAlertView(appearance: appearance)
        alert.addButton("Cancel") {
            print("cancel")
        }
        alert.addButton("OK") {
            print("ok")
        }
        alert.showInfo("確認", subTitle: "よろしいですか？")
    }
}

