//
//  Weather.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/5.
//

import Foundation

//暂时还不明白有什么用？
class Weather {
    @Published var temperatrue:Double
    init(temp:Double) {
        self.temperatrue = temp
    }
}
