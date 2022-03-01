//
//  SliderPageView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI
import Combine

struct SliderPageView: View {
    @State var rating = 0.5
    
    var body: some View {
        VStack{
            Text("Slider Value:\(self.rating)")
            Slider.init(value: $rating).padding(30)
            
        }.navigationBarTitle(Text("Slider"))
    }
}

struct SliderPageView_Previews: PreviewProvider {
    static var previews: some View {
        SliderPageView()
    }
}
