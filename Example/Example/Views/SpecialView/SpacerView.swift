//
//  SpacerView.swift
//  Example
//
//  Created by 刘奇 on 2023/2/12.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack{
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer().frame(height: 20).background(Color.blue)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            Spacer()
            
            
            // 分割线
            Divider()
            
            Spacer()
            
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 20).background(Color.blue)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
