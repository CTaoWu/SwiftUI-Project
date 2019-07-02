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
                Section(header: Text("常用的声明式方式"), content: {
                    NavigationButton(destination: VStkPage()) {
                        ContentRow(title: "VStack", description: "声明垂直布局")
                    }
                    NavigationButton(destination: HStackPage()) {
                        ContentRow(title: "HStack", description: "声明水平布局")
                    }
                    NavigationButton(destination: ZStackPage()) {
                        ContentRow(title: "ZStack", description: "声明水平布局")
                    }
                    NavigationButton(destination: CTScrollView(imageName:["1","2","3","4","5","6","7","8"])) {
                        ContentRow(title: "ScrollView", description: "滚动视图")
                    }
                })
                Section(header: Text("常用的文本"), content: {
                    NavigationButton(destination: TextPage()) {
                        ContentRow(title: "Text", description: "文本")
                    }
                    NavigationButton(destination: TextFieldPage()) {
                        ContentRow(title: "TextField", description: "文本")
                    }
                    NavigationButton(destination: ButtonPage()) {
                        ContentRow(title: "Button", description: "常用的Button")
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
