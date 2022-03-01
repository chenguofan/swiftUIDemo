//
//  ChartView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/14.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        //GeometryReader 在这里，可以使用也可以不使用，但是最好使用
        GeometryReader.init { GeometryProxy in
            Path { path in
                let width = min(GeometryProxy.size.width,GeometryProxy.size.height)
                
                let height = width * 0.75
                let space = width * 0.030
                let middle = width/2
                let topWidth = 0.226 * width;
                let topHeight = 0.488 * height
                
                path.addLines([
                    CGPoint.init(x: middle, y: space),
                    CGPoint.init(x: middle-topWidth, y: topHeight-space),
                    CGPoint.init(x: middle, y: topHeight/2.0+space),
                    CGPoint.init(x: middle+topWidth, y: topHeight-space),
                    CGPoint.init(x: middle, y: space)
                ])
                
                path.move(to: CGPoint.init(x: middle, y: topHeight/2+space * 3))
                path.addLines([
                    CGPoint.init(x: middle-topWidth, y: topHeight+space),
                    CGPoint.init(x: space, y: height-space),
                    CGPoint.init(x: width-space, y: height-space),
                    CGPoint.init(x: middle+topWidth, y: topHeight+space),
                    CGPoint.init(x: middle, y: topHeight/2+space * 3)
                ])
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
