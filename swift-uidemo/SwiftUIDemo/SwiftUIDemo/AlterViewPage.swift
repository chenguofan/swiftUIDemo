//
//  AlterViewPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct AlterViewPage: View {
    @State var sure:Bool = false
    
    var body: some View {
        Button.init {
            print("show log")
            self.sure = true;
        } label: {
            Text.init("Click")
            
            //和 actionSheet 一样的逻辑 
        }.alert(isPresented:$sure) {
            Alert.init(title:Text("温馨提示"), message:Text("尊敬的富豪先生，你确定要把钱捐给这个贫穷的小子吗?"), primaryButton:Alert.Button.default(Text("确定")), secondaryButton:Alert.Button.cancel(Text("取消")))
        }

    }
}

struct AlterViewPage_Previews: PreviewProvider {
    static var previews: some View {
        AlterViewPage()
    }
}
