//
//  ForEachView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct ForEachView: View {
    let  data = (0..<5)
    
    var body: some View {
        ForEach(data){e in
            Text("Hello \(e)")
                .bold()
                .font(.system(size: 25,design: .monospaced))
                .padding(5)
        }.border(Color.gray,width: 1)
        .cornerRadius(10)
        .navigationTitle(Text("ForEach"))
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
