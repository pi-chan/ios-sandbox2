//
//  EasyImagyViewController.swift
//  ios-sandbox
//
//  Created by Hiromasa Ohno on 2018/07/20.
//  Copyright © 2018年 SONIC GARDEN INC. All rights reserved.
//

import UIKit
import EasyImagy

class EasyImagyViewController: UIViewController {

    @IBOutlet weak var redText: UITextView!
    @IBOutlet weak var greenText: UITextView!
    @IBOutlet weak var blueText: UITextView!
    @IBOutlet weak var alphaText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let uiImage : UIImage = #imageLiteral(resourceName: "image")
        let image = Image<RGBA<UInt8>>(uiImage: uiImage)
        redText.text = "\(image.map { $0.redInt })"
        greenText.text = "\(image.map { $0.greenInt })"
        blueText.text = "\(image.map { $0.blueInt })"
        alphaText.text = "\(image.map { $0.alphaInt })"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
