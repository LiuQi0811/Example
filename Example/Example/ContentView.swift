//
//  ContentView.swift
//  Example
//
//  Created by 刘奇 on 2023/2/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           LotteryView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
