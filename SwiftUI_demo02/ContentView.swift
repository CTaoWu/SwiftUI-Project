//
//  ContentView.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/1.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("苹果官方demo"), content: {
                    NavigationButton(destination: CategoryHome().environmentObject(UserData())) {
                        ContentRow(title: "苹果官方demo", description: "苹果官方demo")
                    }
//                    PresentationButton(destination: CategoryHome().environmentObject(UserData())) {
//                        ContentRow(title: "苹果官方demo", description: "苹果官方demo")
//                    }
                })
                Section(header: Text("常用的声明式方式"), content: {
                    NavigationButton(destination: VStkPage()) {
                        ContentRow(title: "VStack", description: "垂直布局")
                    }
                    NavigationButton(destination: HStackPage()) {
                        ContentRow(title: "HStack", description: "水平布局")
                    }
                    NavigationButton(destination: ZStackPage()) {
                        ContentRow(title: "ZStack", description: "覆盖布局")
                    }
                    NavigationButton(destination: CTScrollView(imageName:["1","2","3","4","5","6","7","8"])) {
                        ContentRow(title: "ScrollView", description: "可滚动声明")
                    }
                    NavigationButton(destination: ListPage()) {
                        ContentRow(title: "List", description: "可滚动声明")
                    }
                })
                Section(header: Text("常用的控件"), content: {
                    NavigationButton(destination: TextPage()) {
                        ContentRow(title: "Text", description: "文本")
                    }
                    NavigationButton(destination: TextFieldPage()) {
                        ContentRow(title: "TextField", description: "文本输入")
                    }
                    NavigationButton(destination: ButtonPage()) {
                        ContentRow(title: "Button", description: "常用的Button")
                    }
                    NavigationButton(destination: ImagePage()) {
                        ContentRow(title: "Image", description: "常用的Image")
                    }
                    NavigationButton(destination: DividerPage()) {
                        ContentRow(title: "Divider", description: "线")
                    }
                    NavigationButton(destination: DatePickerPage()) {
                        ContentRow(title: "DatePicker", description: "时间选择器和数据绑定")
                    }
                    NavigationButton(destination: SliderPage()) {
                        ContentRow(title: "Slider", description: "时间选择器和数据绑定")
                    }
                    NavigationButton(destination: StepperPage()) {
                        ContentRow(title: "Stepper", description: "步数器")
                    }
                })
//                Section(header: Text("常用的声明式"), content: {
//                    ContentRow(title: "VStack", description: "VStack：声明垂直布局")
//                })
            }
                .navigationBarTitle(Text("SwiftUI-常用内容"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
