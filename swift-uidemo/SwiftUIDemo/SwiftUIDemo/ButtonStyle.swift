//
//  ButtonStyle.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/10.
//

import SwiftUI

//ViewModifier 用来生成同一个样式的控件
struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .padding(8)
            .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(minWidth: 140)
                    .shadow(radius:5)
            )
    }
}

extension Button{
    func setStyle() -> some View {
        modifier(ButtonStyle())
    }
}
