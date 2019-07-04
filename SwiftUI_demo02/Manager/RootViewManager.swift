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
    
    var body: some View {
        TabbedView(selection: $current) {
            FirstPage()
                .tabItemLabel(
                    VStack {
                        Image(self.images[0])
                        Text(self.labs[0])
                    }
            ).tag(0)
            SecondPage()
                .tabItemLabel(
                    VStack {
                        Image(self.images[1])
                        Text(self.labs[1])
                    }
            ).tag(1)
            ThirdPage()
                .tabItemLabel(
                    VStack {
                        Image(self.images[2])
                        Text(self.labs[2])
                    }
            ).tag(2)
            ContentView()
                .tabItemLabel(
                    VStack {
                        Image(self.images[3])
                        Text(self.labs[3])
                    }
                ).tag(3)
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
