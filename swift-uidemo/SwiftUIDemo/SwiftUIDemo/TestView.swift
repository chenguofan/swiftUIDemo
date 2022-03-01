//
//  Custom.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/9.
//

import SwiftUI

struct TestView: View {
    @State var name:String
    var body: some View {
        TextField.init("请输入账号", text:$name).textFieldStyle(CustomTextFieldStyle())
        Text("hello")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(name: "")
    }
}

//自定义输入框的样式
struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding()
            .border(Color.accentColor)
    }
}

