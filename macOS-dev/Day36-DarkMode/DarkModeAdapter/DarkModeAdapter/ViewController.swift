//
//  ViewController.swift
//  DarkModeAdapter
//
//  Created by Alexcai on 2018/11/17.
//  Copyright © 2018 dongjiu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var adaptedView: NSView!
    override func viewDidLoad() {
        super.viewDidLoad()

        /** 1. 颜色硬编码设置视图背景色 : 这种情况下,无论是light 或者dark 模式,颜色都是固定的值,不会根据主题进行适配 */
//        adaptedView.layer?.backgroundColor = NSColor.red.cgColor
        
        /**2. 使用Asset 中的color 进行light /dark 之间的颜色适配: 切换light和dark时,需要重新开启应用 */
        adaptedView.layer?.backgroundColor = NSColor(named: "Color")?.cgColor
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

