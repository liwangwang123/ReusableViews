//
//  ViewController.swift
//  ReusableViews
//
//  Created by lemo on 2018/7/3.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: LargeButton!
    @IBOutlet weak var button2: LargeButton!
    
    var theme: ButtonTheme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theme = ClearButtonTheme(label: "nextButton")
        
//      button1.theme = theme
        button2.theme = theme
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

