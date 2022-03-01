//
//  ScrollViewPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct ScrollViewPage: View {
    var body: some View {
        ScrollView{
            Text("SwiftUI").padding(20)
            //分界线
            Divider()
            Image("1.jpeg").resizable().frame(width: 300, height: 300, alignment:.center)
            Divider()
            Text("Views and controls are the visual buillding blocks of your app's user interface.")
        }.border(Color.gray,width: 1)
        .cornerRadius(2)
        .padding(5)
        .navigationBarTitle(Text.init("ScrollView"))
    }
}

struct ScrollViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPage()
    }
}
