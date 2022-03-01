//
//  WebViewPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI
import WebKit

struct WebViewPage: UIViewRepresentable {
    func makeUIView(context:Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView:WKWebView,context:Context) {
        let req = URLRequest.init(url: URL.init(string: "https://www.apple.com")!)
        uiView.load(req)
    }
}

struct WebViewPage_Previews: PreviewProvider {
    static var previews: some View {
        WebViewPage()
    }
}
