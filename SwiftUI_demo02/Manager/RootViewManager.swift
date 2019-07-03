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
//        TabbedView(selection: $current) {
//            ForEach((0..<self.images.count).map{ $0 }){item in
//                TabbedViewItem(index: item)
//                    .tabItemLabel(
//                        VStack {
//                            Image(self.images[item])
//                            Text(self.labs[item])
//                        }
//                )
//            }
        TabbedView(selection: $current) {
//            ForEach((0..<self.images.count).map{ $0 }) { index in
                ContentView()
                    .tabItemLabel(
                        VStack {
                            Image(self.images[0])
                            Text(self.labs[0])
                        }
                    )
//            }
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
