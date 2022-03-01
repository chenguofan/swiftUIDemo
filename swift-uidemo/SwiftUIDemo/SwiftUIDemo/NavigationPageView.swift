//
//  NavigationView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct NavigationPageView: View {
    var body: some View {
        NavigationView{
            LazyHStack{
                Text("🌺🌺🦋🦋🧜‍♀️🧜‍♀️").blur(radius:3)
                Text("Swifter Swifter")
                    .bold()
                    .foregroundColor(.orange)
                    .font(.largeTitle)
            }
        }.navigationBarTitle(Text("NavigationView"))
         .navigationBarItems(trailing: Button.init(action: {
            print("Tap")
        }, label: {
            Text("Right").foregroundColor(.orange)
        }))
    }
}

struct NavigationPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPageView()
    }
}
