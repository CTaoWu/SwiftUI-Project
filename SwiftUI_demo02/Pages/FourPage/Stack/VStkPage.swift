//
//  VStackPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/1.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct VStkPage : View {
    var body: some View {
        VStack {
            /// alignment:成员排列位置（如，全部从中间开始.center;全部从头开始.leading）\nspacing:成员之间的间距
            Text("你看我下面那个Text")
            Divider()
            
            Text("为什么会垂直，因为我们两个Text是包含在VStack里的")
                .lineLimit(nil)
            Divider()
            
            Text("第一种设置默认属性的创建方式VStack { 内容 }")
                .lineLimit(nil)//设置成nil才不限制行数，跟之前的设置成0不一样了
            Divider()
            
            Text("第二种种设置默认属性的创建方式VStack(设置的属性) { 内容 }")
                .lineLimit(nil)
            Divider()
        }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

#if DEBUG
struct VStkPage_Previews : PreviewProvider {
    static var previews: some View {
        VStkPage()
    }
}
#endif
