//
//  Controller.swift
//  Example
//
//  Created by 刘奇 on 2023/2/12.
//

import Foundation
import UIKit
import SwiftUI
struct Controller<T: UIViewController> : UIViewControllerRepresentable{
    // 设置别名
    typealias UIViewControllerType = UIViewController
    func makeUIViewController(context: UIViewControllerRepresentableContext<Controller>) -> UIViewController {
        return T()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<Controller>) {
        debugPrint("\(#function):\(type(of: T.self))")
    }
    
}

struct UIButton_preview: PreviewProvider{
    static var previews: some View{
        Controller<UIKitController>()
    }
}
