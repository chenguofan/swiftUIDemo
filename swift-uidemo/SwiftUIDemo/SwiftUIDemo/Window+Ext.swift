//
//  File.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/4.
//

import UIKit

struct MainApp {
    public static var keyWindow:UIWindow?{
        return UIApplication.shared.connectedScenes.filter({$0.activationState == .foregroundActive}).map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.filter({$0.isKeyWindow}).first ?? nil
    }
}
