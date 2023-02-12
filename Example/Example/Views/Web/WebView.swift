//
//  WebView.swift
//  Example
//
//  Created by 刘奇 on 2023/2/12.
//  UIViewRepresentable  UIKit视图的包装器

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable{
    func makeUIView(context: Context)-> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView:WKWebView,context: Context){
        // Request请求网址 加载到指定的URL网址
       let request =  URLRequest(url: URL(string: "https://www.169tp.com/")!)
        uiView.load(request)
    }
}

// 视图展示
#if DEBUG
struct WebView_Previews: PreviewProvider{
    static var previews: some View{
        WebView()
    }
}
#endif
