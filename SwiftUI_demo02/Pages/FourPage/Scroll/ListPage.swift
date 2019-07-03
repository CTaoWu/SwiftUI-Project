//
//  ListPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ListPage : View {
    var body: some View {
//        List(0..<20) { item in
//
//        }
        List {
            Text("List 内容里，我是第一个Text")
            Text("List 内容里，我是第二个Text")
            Text("每一个声明式后都默认有一条线")
            Image("1").resizable().frame(width: 375,height: 200)
            Text("后面默认的高度，以最后一个视图的高度为标的后面默认的高度，以最后一个视图的高度为标的后面默认的高度，以最后一个视图的高度为标的").lineLimit(nil)
        }
            .navigationBarTitle(Text("List"), displayMode: .large)
    }
}

#if DEBUG
struct ListPage_Previews : PreviewProvider {
    static var previews: some View {
        ListPage()
    }
}
#endif
