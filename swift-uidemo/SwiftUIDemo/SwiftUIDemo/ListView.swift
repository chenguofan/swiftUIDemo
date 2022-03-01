//
//  ListView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        //这里代码提示不灵光
        List(0..<30){item in
            Text("hello world!")
        }.navigationTitle(Text("hello world")).navigationBarTitleDisplayMode(.large)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
