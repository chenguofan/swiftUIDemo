//
//  FormPageView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI

struct FormPageView: View {
    @State var firstName:String
    @State var lastName:String
    
    var body: some View {
        VStack{
            Form {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            }.background(Color.white)
            
        }.navigationBarTitle(Text.init("Form"))
    }
}

struct FormPageView_Previews: PreviewProvider {
    static var previews: some View {
        FormPageView(firstName: "", lastName: "")
    }
}
