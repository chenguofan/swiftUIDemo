//
//  StepperPageView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI
import Combine

struct StepperPageView: View {
    
    @State var value = 0
    
    var body: some View {
        HStack{
            Spacer()
            Stepper.init(value: $value, step: 2) { c in
                print(c)
                
            } label:{
                Text("Stepper Value:\(self.value)").padding(.init(top: 0, leading: 0, bottom: 0, trailing: -100))
            }.frame(width: 240,alignment: .leading).padding(.leading)
            
        }.navigationBarTitle(Text("Stepper"))
    }
}

struct StepperPageView_Previews: PreviewProvider {
    static var previews: some View {
        StepperPageView()
    }
}
