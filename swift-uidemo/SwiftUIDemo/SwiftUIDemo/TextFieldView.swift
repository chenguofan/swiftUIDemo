//
//  TextFieldView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/4.
//

import SwiftUI

struct TextFieldView: View {
    @State var name:String = ""
    @State var password:String = ""
    @State var number:NSNumber = 0
    
    let nameText = Text("请输入昵称").foregroundColor(.secondary).font(.system(size: 16))
    let pwdText = Text("请填入密码").foregroundColor(.secondary).font(.system(size: 16))

    //按压enter键，onCommit 方法才执行
    var body: some View {
        VStack{
            HStack{
                Text("昵称:").foregroundColor(.secondary)
                //明文输入框
                TextField("请输入账号", text: $name, onEditingChanged: { (changed) in
                    print("onEditing: \(changed)")
                   
                }, onCommit: {
                    self.endEditing(true);
                    
                })
                
            }.padding(10).frame(height:50, alignment: .leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding(EdgeInsets.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack{
                Text("密码:").foregroundColor(.secondary)
                //密文输入框
                SecureField.init("请输入密码", text: $password){
                    self.endEditing(true);
                }

            }.padding(10).frame(height: 50, alignment: .leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding(EdgeInsets.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            HStack{
                //限制输入的一定是数字，否则会报错,要构建一个消息的发送和接收机制，否则没什么屌用
                Text("数字:").foregroundColor(.secondary)
                TextField.init("just input number", value: $number, formatter:NumberFormatter())
                
//                以下的诸多formatter，有的可以使用，有的不可以使用
                //ListFormatter
                //MassFormatter
                //EnergyFormatter
                //LengthFormatter
                //MeasurementFormatter
                //UIPrintFormatter
                
            }.padding(10).frame(height: 50, alignment: .leading).textFieldStyle(RoundedBorderTextFieldStyle()).padding(EdgeInsets.init(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
    }
    private func endEditing(_ force: Bool) {
        MainApp.keyWindow?.endEditing(force)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
