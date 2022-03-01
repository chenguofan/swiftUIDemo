//
//  AniateView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/12.
//

import SwiftUI

struct AniateView: View {
    @State var aniate:Bool = false
    
    var body: some View {
        
        Image.init(systemName: "seal.fill")
        Image.init(systemName: "shield.fill")
        Image.init(systemName: "capsule.fill")
        
        Path { path in
            path.addLines([
                CGPoint.init(x: 0, y: 0),
                CGPoint.init(x: 80, y: 0),
                CGPoint.init(x: 80, y:80),
                CGPoint.init(x: 0, y:80),
            ])
        }.fill(LinearGradient.init(gradient: Gradient.init(colors: [.red,.blue,.green]), startPoint: .leading, endPoint: .trailing))
        
        HStack {
            ForEach(0..<6) {
                Rectangle()
                    .fill(LinearGradient(gradient:
                        Gradient(colors: [.blue, .red, .green]),
                                         startPoint: .top, endPoint: .bottom))
                    .hueRotation((.degrees(Double($0 * 36))))
                    .frame(width: 60, height: 60, alignment: .center)
            }
        }
        VStack{
            Text("hello world")
            Rectangle().frame(width: 40, height: 10, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.red)
                .rotationEffect(.degrees(self.aniate ? 60:0), anchor:.center)
                .animation(Animation.linear(duration: 0.5))
                .onTapGesture {
                    self.aniate.toggle()
                }
            
            Rectangle().frame(width: 20, height: 10, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(.red)
                .scaleEffect(CGSize.init(width:2, height: 2), anchor: .center)
                .animation(Animation.linear(duration: 10))
                .onTapGesture {
                    print("点击了这里");
                }
        }
    }
}

struct AniateView_Previews: PreviewProvider {
    static var previews: some View {
        AniateView()
    }
}
