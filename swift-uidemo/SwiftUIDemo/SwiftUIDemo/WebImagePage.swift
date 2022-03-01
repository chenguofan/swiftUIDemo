//
//  WebImagePage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct WebImagePage: View {
    
    @State private var uiImage:UIImage? = nil
    let placeholderImage = UIImage(named: "2.jpg")!
    
    var body: some View {
        Image.init(uiImage: self.uiImage ?? placeholderImage)
            .resizable()
            .onAppear(perform:downloadWebImage)
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
                print("Tap")
            }.navigationTitle(Text("WebImage"))
    }
    
    func downloadWebImage() {
        guard let url = URL(string: "https://picsum.photos/50/50?i=30")else{
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            print("data:\(String(describing: data)) response:\(String(describing: response))")
            if let data = data,let image = UIImage.init(data: data){
                self.uiImage = image
                print("self.uiImage:\(String(describing: self.uiImage))");
            }else{
                print("error:\(String(describing: error))")
            }
        }.resume()
    }
    
}

struct WebImagePage_Previews: PreviewProvider {
    static var previews: some View {
        WebImagePage()
    }
}
