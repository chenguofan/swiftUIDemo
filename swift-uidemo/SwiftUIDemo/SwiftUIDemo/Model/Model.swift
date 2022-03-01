//
//  Model.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/5.
//

import Foundation

class Model:ObservableObject {
    @Published var number = 0;
    let ft = HyFormatter()
    
}

class HyFormatter: NumberFormatter {
    
    override func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
        // 让父类为我们干活
        let success = super.getObjectValue(obj, for: string, errorDescription: error)
        
        if (error?.pointee as String?) != nil{
            // 检测到非法输入,等待处理...
            // (PS:实际产品中需要先判断是否有错误发生，再去访问obj指针中的内容，
            // 否则可能会发生访问违例!)
            print("error:\(String(describing: error))");
        }
        return success
    }
    
    override func string(for obj: Any?) -> String? {
        // 同样让父类为我们操心
        return super.string(for: obj)
    }
}

