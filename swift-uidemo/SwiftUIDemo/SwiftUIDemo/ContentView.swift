//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by suhengxian on 2021/8/3.
//

import SwiftUI

struct ContentView: View {
    @State var name:String = "0"
    
    var body: some View {
        NavigationView{
            List{
                Section(header:Text("基础组件")) {
                    Group{
                        NavigationLink(
                            destination: TextView(),
                            //row的标题文件
                            label: {
                                Text("Text")
                            })
                        NavigationLink(
                            destination: ImageView(),
                            label: {
                                Text("Image")
                            })
                        NavigationLink(
                            destination: CustomView(title: "张思中", subTitle: "是条狗"),
                            label: {
                                Text("自定义文件")
                            })
                        NavigationLink(
                            destination: TextFieldView(),
                            label: {
                                Text("TextFieldView")
                            })
                        NavigationLink(
                            destination: ButtonView(),
                            label: {
                                Text("ButtonView")
                            })
                        NavigationLink(
                            destination: WebImagePage(),
                            label: {
                                Text("WebImagePage")
                            })
                        NavigationLink(
                            destination: ListView(),
                            label: {
                                Text("ListView")
                            })
                        NavigationLink(
                            destination: ScrollViewPage(),
                            label: {
                                Text("ScrollView")
                            })
                        NavigationLink.init(destination: ForEachView()) {
                            Text("ForEachView")
                        }
                        NavigationLink.init(destination: PickerViewPage()) {
                            Text("PickerViewPage")
                        }
                        
                    }
                    
//                    任何一个元素的子元素的个数不能超过10个，否则会莫名的报错，使用Group解决这个问题
                    Group{
                        NavigationLink.init(destination: DatePickerPage()) {
                                                Text("DatePickerPage")
                        }
                        NavigationLink.init(destination: TogglePageView()) {
                                                Text("TogglePageView")
                        }
                        NavigationLink.init(destination: SliderPageView()) {
                                                Text("SliderPageView")
                        }
                        NavigationLink.init(destination: StepperPageView()) {
                                                Text("StepperPageView")
                        }
                        NavigationLink.init(destination: NavigationPageView()) {
                                                Text("NavigationPageView")
                        }
                        NavigationLink.init(destination: TableViewPage()) {
                                                Text("TableViewPage")
                        }
                        NavigationLink.init(
                            //带参数的，需要生成对象的时候需要带上参数
                            destination:FormPageView(firstName: "", lastName: "")) {
                            Text("FormPageView")
                        }
                        
                        NavigationLink.init(
                            //带参数的，需要生成对象的时候需要带上参数
                            destination:AlterViewPage()){
                            Text("AlterViewPage")
                        }
                        NavigationLink.init(
                            //带参数的，需要生成对象的时候需要带上参数
                            destination: WebViewPage()){
                            Text("WebViewPage")
                        }
                        NavigationLink.init(
                            //带参数的，需要生成对象的时候需要带上参数
                            destination:ControllerPage<UIKitController>()){
                            Text("ControllerPage")
                        }
                    }
                    
                    Group{
                        NavigationLink.init(
                            //带参数的，需要生成对象的时候需要带上参数
                            destination:ControllerPage<TestViewController>()){
                            Text("TestViewController")
                        }
                        
                        NavigationLink.init(
                            //带参数的，需要生成对象的时候需要带上参数
                            destination:TestView(name:"")){
                            Text("TestView")
                        }
                        
                        NavigationLink.init(destination: DataView.init(name: name)) {
                            Text("DataView");
                        }
                        
                        NavigationLink.init(destination:DataTextView.init()) {
                            Text("DataTextView");
                        }
                        NavigationLink.init(destination:BtnViewTest.init()) {
                            Text("BtnViewTest");
                        }
                        NavigationLink.init(destination:CollView.init()) {
                            Text("CollView");
                        }
                        
                        //动画视图
                        NavigationLink.init(destination:AniateView.init()) {
                            Text("AniateView");
                        }
                        //动画视图
                        NavigationLink.init(destination:ChartView.init()) {
                            Text("ChartView");
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
            .navigationBarTitle("Demo")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:Button(action: {
                print("点击了这里");
            }, label: {
                Text("hello").foregroundColor(.orange)
            }),
            trailing: Button(action: {
                print("点击了那里");
            }, label: {
                Text("Hi").foregroundColor(.red)
            })
            )
        }
        NavigationView{
            Group{
                NavigationLink.init(destination: TextView.init()) {
                    Text("hello1")
                    //navigationTitle 加在 NavigationView 后面没有作用
                }.navigationTitle("china")
                
                NavigationLink.init(destination: TextView.init()) {
                    Text("hello2")
                }
            }
            
        }.onAppear{ //只执行一次
            print("appear1");
            
            //正向传值，通过初始化定义的数据传值
            var number = 1;
            let _  = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                number+=1;
                self.name = "\(number)";
            }
            
            print("Countries:\(countries)");
            
        }.onDisappear //disappear 不执行
        {
            print("disappear1");
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

