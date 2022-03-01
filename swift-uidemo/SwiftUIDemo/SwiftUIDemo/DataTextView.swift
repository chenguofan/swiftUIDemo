//
//  DataTextView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/10.
//

import SwiftUI

struct DataTextView: View {
    @State var name:String = ""
    
    var body: some View {
        TextField.init("请输入值", text: $name) { change in
            
        } onCommit: {
            print("")
        }
    }
    
}

struct DataTextView_Previews: PreviewProvider {
    static var previews: some View {
        DataTextView()
    }
}
