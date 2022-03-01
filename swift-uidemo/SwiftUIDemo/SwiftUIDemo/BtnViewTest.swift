//
//  BtnViewTest.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/10.
//

import SwiftUI

struct BtnViewTest: View {
    var body: some View {
        
        //ViewModifier 测试
        Button.init{
            print("Hello world");
            
        } label:{
            Text("Hello world");
            
        }.setStyle()
    }
}

struct BtnViewTest_Previews: PreviewProvider {
    static var previews: some View {
        BtnViewTest()
    }
}
