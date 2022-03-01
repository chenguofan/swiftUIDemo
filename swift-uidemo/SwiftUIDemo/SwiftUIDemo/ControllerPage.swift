//
//  ControllerPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/9.
//

import SwiftUI
import Foundation
import UIKit

struct ControllerPage<T:UIViewController>: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: Context) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        print("hello world");
    }
    
}

struct ControllerPage_Previews: PreviewProvider {
    static var previews: some View {
        ControllerPage()
    }
}
