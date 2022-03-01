//
//  CustomView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/4.
//

import SwiftUI

struct CustomView: View {
    private var title:String = "";
    private var subTitle:String = "";
    
    init(title:String,subTitle:String) {
        self.title = title;
        self.subTitle = subTitle;
    }
    
    var body: some View {
        Text(title).font(.system(.largeTitle)).fontWeight(.medium)
        Text(subTitle).font(.system(.subheadline)).fontWeight(.regular);
    }
    
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView(title:"", subTitle: "")
    }
}
