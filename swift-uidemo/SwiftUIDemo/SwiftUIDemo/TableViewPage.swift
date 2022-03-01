//
//  TableViewPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct TableViewPage: View {
//    @state 用来修饰这种简单的number型的，bool行的数值
    
    @State private var index = 0 // 默认选中索引
    let imgs = ["icon","icon","icon","icon","icon"]
    let titles = ["首页","推荐","优选","自选","我的"]
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(0..<imgs.count) { item in
                TabItemPage(index: item)
                    .tabItem{
                        Image(self.imgs[item])
                        Text(self.titles[item])
                }
                .tag(item)
            }
        }.navigationBarTitle("TabViewPage")
        
    }
}

fileprivate struct TabItemPage:View{
    var index: Int
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color.orange)
            VStack {
                Text("\(index)")
                    .foregroundColor(.white)
                    .font(.system(size: 50, design: .rounded))
                    .bold()
                Image("1.jpeg")
                    .resizable()
                    .frame(width: 100,height: 100)
            }
        }
    }
}

struct TableViewPage_Previews: PreviewProvider {
    static var previews: some View {
        TableViewPage()
    }
}
