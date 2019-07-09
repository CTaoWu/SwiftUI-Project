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
        ///ViewBuilder 超过10个，编译报错~苹果爸爸不让
//        NavigationView {
            List {
                Section(header: Text("常用的声明式方式"), content: {
                    NavigationLink(destination: VStkPage()) {
                        ContentRow(title: "VStack", description: "垂直布局")
                    }
                    NavigationLink(destination: HStackPage()) {
                        ContentRow(title: "HStack", description: "水平布局")
                    }
                    NavigationLink(destination: ZStackPage()) {
                        ContentRow(title: "ZStack", description: "覆盖布局")
                    }
                    NavigationLink(destination: CTScrollView(imageName:["1","2","3","4","5","6","7","8"])) {
                        ContentRow(title: "ScrollView", description: "可滚动声明")
                    }
                    NavigationLink(destination: ListPage()) {
                        ContentRow(title: "List", description: "可滚动声明")
                    }
                    NavigationLink(destination: FormPage()) {
                        ContentRow(title: "Form", description: "表单")
                    }
                    NavigationLink(destination: GroupPage()) {
                        ContentRow(title: "Group", description: "视图集合")
                    }
                })
                Section(header: Text("常用的控件"), content: {
                    NavigationLink(destination: TextPage()) {
                        ContentRow(title: "Text", description: "文本")
                    }
                    NavigationLink(destination: TextFieldPage()) {
                        ContentRow(title: "TextField", description: "文本输入")
                    }
                    NavigationLink(destination: ButtonPage()) {
                        ContentRow(title: "Button", description: "常用的Button")
                    }
                    NavigationLink(destination: ImagePage()) {
                        ContentRow(title: "Image", description: "常用的Image")
                    }
                    NavigationLink(destination: DividerPage()) {
                        ContentRow(title: "Divider", description: "线")
                    }
                    NavigationLink(destination: DatePickerPage()) {
                        ContentRow(title: "DatePicker", description: "时间选择器和数据绑定")
                    }
                    NavigationLink(destination: SliderPage()) {
                        ContentRow(title: "Slider", description: "时间选择器和数据绑定")
                    }
                    NavigationLink(destination: StepperPage()) {
                        ContentRow(title: "Stepper", description: "步数器")
                    }
                    NavigationLink(destination: SegmentedControlPage()) {
                        ContentRow(title: "SegmentedControl", description: "分部控制器")
                    }
                })
                Section(header: Text("导航"), content: {
                    NavigationLink(destination: NavigationViewPage()) {
                        ContentRow(title: "NavigationView", description: "分部控制器")
                    }
                    NavigationLink(destination: TabbedViewPage()) {
                        ContentRow(title: "TabbedView", description: "分部控制器")
                    }
                })
            }
                .navigationBarTitle(Text("SwiftUI-常用内容"))
//        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
