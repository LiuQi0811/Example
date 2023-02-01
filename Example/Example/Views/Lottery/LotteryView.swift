//
//  LotteryView.swift
//  Example
//
//  Created by 刘奇 on 2023/2/1.
//  抽奖视图

import SwiftUI

struct LotteryView: View {
    @ObservedObject var control = LotteryControl()
    
    let colors = [Color.red, .black, .mint, .green, .blue, .orange, .yellow, .purple]
    var body: some View {
        ZStack{
            ForEach(0..<control.index,id: \.self){ idx in
                // 通过 Path 绘制图形
                Path{ path in
                    // 移动点的位置
                    path.move(to: CGPoint(x: 150, y: 150))
                    // 绘制圆弧
                    path.addArc(center: CGPoint(x: 150, y: 150), radius: 150, startAngle: Angle(degrees: Double(idx) *  self.control.angle), endAngle: Angle(degrees: Double(idx+1) * self.control.angle), clockwise: false)
                    // 画线，最后用.fill填充一个颜色
                    path.addLine(to: CGPoint(x: 150, y: 150))
                }
                // 填充颜色
                .fill(self.colors[idx%self.colors.count])
            }
        }
        // 设置frame框架
        .frame(width: 300, height: 300,alignment: .center)
        .rotationEffect(.degrees(self.control.rotation))
    }
}

struct LotteryView_Previews: PreviewProvider {
    static var previews: some View {
        LotteryView()
    }
}
