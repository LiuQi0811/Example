//
//  LotteryControl.swift
//  Example
//
//  Created by 刘奇 on 2023/2/1.
//

import Foundation
class LotteryControl: ObservableObject{
    @Published var rotation = 0.0
    let index = 8
    var angle: Double { 360 / Double(index) }
    /**
     初始化无参构造方法
     */
    init() {
        // 创建定时器
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.rotation += 30
        }
    }

}
