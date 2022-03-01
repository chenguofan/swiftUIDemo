//
//  DataView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/10.
//

import SwiftUI

struct DataView: View {
    @State var name:String = ""
    var body: some View {
        Text.init(verbatim: name)
    }
    
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView(name: "hello world")
    }
}
