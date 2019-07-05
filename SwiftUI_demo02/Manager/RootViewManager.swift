//
//  RootViewManager.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct RootViewManager : View {
    @State private var current = 0
    @State private var images = ["home", "msg", "preview", "user"]
    @State private var labs = ["home", "msg", "preview", "user"]
    @State private var title = "First"
    private var titles = ["1", "2", "3", "4"]
    var body: some View {
        NavigationView {
            TabbedView(selection: $current) {
                FirstPage()
                    .tabItemLabel(
                        VStack {
                            Image(self.images[0])
                            Text(self.labs[0])
                        }
                    )
                .tag(0).onAppear {
                    self.title = "首页"
                }
                SecondPage()
                    .tabItemLabel(
                        VStack {
                            Image(self.images[1])
                            Text(self.labs[1])
                        }
                    )
                    .tag(1).onAppear {
                        self.title = "第二页"
                }
                ThirdPage()
                    .tabItemLabel(
                        VStack {
                            Image(self.images[2])
                            Text(self.labs[2])
                        }
                    )
                    .tag(2).onAppear {
                        self.title = "第三页"
                }
                ContentView()
                    .tabItemLabel(
                        VStack {
                            Image(self.images[3])
                            Text(self.labs[3])
                        }
                    ).tag(3).onAppear {
                        self.title = "第四页"
                }
            }.navigationBarTitle(Text(title))
        }
    }
}

#if DEBUG
struct RootViewManager_Previews : PreviewProvider {
    static var previews: some View {
        RootViewManager()
    }
}
#endif
