//
//  DatePickerPage.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/6.
//

import SwiftUI
import Combine

struct DatePickerPage: View {
    
    @ObservedObject var server = DateServer()
    var speaceDate:Range<Date>?
    
    init() {
        let soon = Calendar.current.date(byAdding: .year, value: -1, to: server.date) ?? Date()
        let later = Calendar.current.date(byAdding: .year, value: 1, to: server.date) ?? Date()
        speaceDate = soon..<later
    }
    
    var body: some View {
        VStack {
            HStack() {
                Text("日期选择").bold()
                DatePicker(selection: $server.date, in: server.spaceDate, displayedComponents: .date, label: {
                    Text("")
                })
            }
            .navigationBarTitle(Text("DatePicker"))
            
        }
    }
}

class DateServer: ObservableObject {
    
/*    为了管理外部数据，SwiftUI具有一个ObservableObject协议。这要求我们声明一个名为objectWillChange的变量，该变量需要一个Publisher；通常，我们可以使用PassThroughSubject。这就是遵守ObservableObject协议所需的全部。然后，当值更改时，我们需要在发布服务器上使用send方法发送消息。 PassThroughSubject接受两个参数，一个输出和一个失败。
*/
    var didChange = PassthroughSubject<DateServer,Never>()
    var date:Date = Date(){
        //didSet方法定义在变量后面
        didSet{
            //上面定义的变量就是为了在这里使用的
            didChange.send(self)
            print("Date Changed:\(date)")
        }
    }
    
    //日期区间的操作
    var spaceDate:ClosedRange<Date>{
        let soon = Calendar.current.date(byAdding: .year,value: -1, to: date) ?? Date()
        let later = Calendar.current.date(byAdding: .year,value: 1, to: date) ?? Date()
        
        let speaceDate = soon...later
        
        return speaceDate
    }
    
}

struct DatePickerPage_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerPage()
    }
}

