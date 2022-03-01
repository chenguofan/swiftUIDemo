//
//  ButtonView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/4.
//

import SwiftUI

struct ButtonView: View {
    @State var btn5State:Bool = false
    
    var body: some View {
        HStack{
            Button.init("点击我") {
                print("点击我");
            }
            
            //最基础的button 点击时间和文字
            Button.init {
                print("张老狗");
            } label: {
                Text("张老狗");
            }.padding()
            .background(Color.orange)
            .cornerRadius(20)
            .shadow(radius: 10)
            
            //图片和文字btn
            Button.init {
                print("点击来");
            } label: {
                Image("1.jpeg").cornerRadius(10).frame(width: 80, height: 80, alignment: .center)
                Text("btn2\n点击")
            }.padding()
            .background(Color.orange)
            .cornerRadius(20)
            .shadow(radius: 10)

            Button.init("world") {
                print("hello world2");
            }
            
            Button.init {
                self.btn5State.toggle();
                
            } label: {
                VStack{
                    Text(self.btn5State ? "btn5,已选中":"btn5,未选中").foregroundColor(Color.red)
                    Image(self.btn5State ? "1.jpeg":"2.jpg").resizable().renderingMode(.original).frame(width: 60, height: 60, alignment: .center).cornerRadius(10)
                }
            }.padding()
             .background(self.btn5State ? Color.orange: Color.gray)
             .cornerRadius(20)
             .shadow(radius: 10)
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
