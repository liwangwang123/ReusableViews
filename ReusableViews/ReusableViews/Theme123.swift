//
//  Theme.swift
//  ReusableViews
//
//  Created by lemo on 2018/7/3.
//  Copyright © 2018年 wangli. All rights reserved.
//

import UIKit

//按钮主题
protocol ButtonTheme {
    var label: String { get set }
    var backgroundColor: UIColor { get }
    var tintColor: UIColor { get }
    
}

struct RedButtonTheme: ButtonTheme {
    var backgroundColor: UIColor = .red
    var tintColor: UIColor = .white
    var label: String
    
    init(label: String) {
        self.label  = label
    }
}

struct ClearButtonTheme: ButtonTheme {
    var backgroundColor: UIColor = .clear
    var tintColor: UIColor = .black
    var label: String
    
    init(label: String) {
        self.label  = label
    }
}

class LargeButton: UIButton {
    var theme: ButtonTheme? {
        
        didSet {
            styleButton()
        }
    }
    
    private func styleButton() {
        if let theme = theme {
            backgroundColor = theme.backgroundColor
            tintColor = theme.backgroundColor
            setTitle(theme.label, for: .normal)
        }
    }
    
}

