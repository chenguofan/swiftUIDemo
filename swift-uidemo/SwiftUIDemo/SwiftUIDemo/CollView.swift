//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/11.
//

import SwiftUI

struct CollView: View {
    var body: some View {
        
        let arr:[GridItem] = [
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil)
          ]
        
        ScrollView{
//          Rectangle()
//            .fill(Color.orange)
//            .frame(height: 400)
            
          LazyVGrid(columns: arr,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders],
                    content: {
                      Section(header:
                                Text("Section 1")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.blue)
                                .padding(EdgeInsets.init(top: 0, leading:10, bottom: 0, trailing:10))
                      ) {
                        ForEach(0..<20) { index in
                          Rectangle()
                            .frame(height: 150)
                        }
                      }
                      Section(header:
                                Text("Section 2")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.red)
                                .padding(EdgeInsets.init(top: 0, leading: 10, bottom: 0, trailing:10))
                      ) {
                        ForEach(0..<20) { index in
                          Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                        }
                      }
                    })
        }
        
    }
}

struct CollView_Previews: PreviewProvider {
    static var previews: some View {
        CollView()
    }
}
