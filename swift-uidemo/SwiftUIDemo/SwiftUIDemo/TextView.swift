//
//  TextView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/3.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.system(.largeTitle)).fontWeight(.bold).italic().foregroundColor(.red).shadow(color: .red, radius: 10, x: 1, y: 2)
            
            //放在这里会执行多次
            .onAppear()
            {
                print("appear2");
            
            }.onDisappear()
            {
                print("disappear2");
            }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
