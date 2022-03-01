//
//  TogglePageView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct TogglePageView: View {
    @State var isOn:Bool = false;
    
    var body: some View {
        HStack{
            Toggle(isOn:$isOn){
                Text("State:\(self.isOn == true ? "开":"关")")
            }.padding(20)
            Spacer()
        }.navigationBarTitle(Text.init("Toggle"))
    }
}

struct TogglePageView_Previews: PreviewProvider {
    static var previews: some View {
        TogglePageView()
    }
}
