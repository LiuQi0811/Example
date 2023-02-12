//
//  UIKitController.swift
//  Example
//
//  Created by 刘奇 on 2023/2/12.
//

import Foundation
import UIKit
import SwiftUI
class UIKitController: UIViewController{
    override func viewDidLoad(){
        // 按钮添加到视图
        view.addSubview(button)
    }
    lazy var button: UIButton = {
        // 创建Button按钮
        let button = UIButton(type: .system)
        // 设置 标题大小
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        // 设置 按钮名称
        button.setTitle("UIView方式 创建Button", for: .normal)
        // 设置 按钮颜色
        button.setTitleColor(.orange, for: .normal)
        // 字体填充方式
        button.sizeToFit();
        // 居中
        button.center = view.center
        // 跳转视图
        button.addTarget(self, action: #selector(openContentView), for: .touchUpInside)
        // 返回Button按钮视图
        return button
    }()
    
    @objc func openContentView(){
        let hostVC = UIHostingController(rootView: ContentView())
        present(hostVC, animated: true, completion: nil)
    }
}
