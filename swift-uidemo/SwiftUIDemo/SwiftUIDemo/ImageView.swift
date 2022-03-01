//
//  ImageView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/3.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        HStack{
            //可以点击
            Image("1.jpeg").resizable().frame(width:50, height: 50, alignment: .center).onTapGesture {
                print("hello world222");
            }
            Image("1.jpeg").resizable().frame(width: 50, height: 50, alignment:.leading)
            Image("1.jpeg").resizable(capInsets:EdgeInsets.init(top: 20, leading: 10, bottom: 20, trailing:10), resizingMode: .stretch).frame(width: 50, height: 50, alignment: .bottomLeading)
            
            Image("1.jpeg").resizable().frame(width: 100, height: 100, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 4)).shadow(radius: 10).onTapGesture {
                print("hello world");
            }
            
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
