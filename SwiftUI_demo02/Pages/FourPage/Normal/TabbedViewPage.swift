//
//  TabbedViewPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct TabbedViewPage : View {
    @State private var index = 1
    @State private var images = ["home", "msg", "preview", "user"]
    @State private var labs = ["home", "msg", "preview", "user"]

    var body: some View {
        /// TabbedView(selection: $index)
        /// selection默认选择第几个items
        TabbedView(selection: $index) {
            // 循环创建item，依托于View的tabItemLabel内
            ForEach((0..<images.count).map{ $0 }){item in
                TabbedViewItem(index: item)
                    .tabItemLabel(
                        VStack {
                            Image(self.images[item])
                            Text(self.labs[item])
                        }
                    )
            }
        }.accentColor(Color.orange)//设置颜色
    }
}

struct TabbedViewItem: View {
    var index: Int

    var body: some View {
        ZStack(alignment: .center, content: {
            VStack {
                Text("\(index)")
                    .color(.black)
                    .bold()
            }
        })
    }
}

#if DEBUG
struct TabbedViewPage_Previews : PreviewProvider {
    static var previews: some View {
        TabbedViewPage()
    }
}
#endif
