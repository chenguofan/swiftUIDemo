//
//  PickerViewPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct PickerViewPage: View {
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    //这他妈是个啥，咱也不知道
    let leftSource = (0..<10).map { $0%2 == 0 ? "🐝\($0)":"🧚‍♀️\($0)" }
    let rightSource = (11...36).map({ String($0 - 1,radix: $0).uppercased()})
    
    var body: some View {
        HStack{
            VStack{
                Text("Left value:")
                Text("\(self.leftSource[self.leftIndex])")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                Picker.init(selection: $leftIndex, label: Text("Left Picker")) {
                    ForEach(0..<leftSource.count){
                        Text(self.leftSource[$0]).tag($0)
                    }
                }.frame(width: UIScreen.main.bounds.width/2)
            }
            VStack{
                Text("Right Value:")
                Text("\(self.rightSource[self.rightIndex])")
                    .foregroundColor(.black)
                    .bold()
                    .font(.largeTitle)
                Picker.init(selection: $rightIndex, label: Text("rightPicker")) {
                    ForEach(0..<rightSource.count){
                        Text(self.rightSource[$0]).tag($0)
                    }
                }.frame(width: UIScreen.main.bounds.width/2)
            }.navigationBarTitle(Text.init("Picker"))
        }
    }
}

struct PickerViewPage_Previews: PreviewProvider {
    static var previews: some View {
        PickerViewPage()
    }
}
