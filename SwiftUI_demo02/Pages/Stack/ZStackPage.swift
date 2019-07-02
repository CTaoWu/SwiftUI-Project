//
//  ZStackPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/1.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ZStackPage : View {
    var body: some View {
        /// ZStack用于子控件覆盖布局
        /// alignment内设置布局样式，具体看官方注释
        ZStack(alignment: .bottom, content: {
            Image("1")
                .resizable()
                .frame(width: 375, height: 200)
                .tapAction {
                    print("图片加入了点击事件方法")
            }
            Text("覆盖上去的内容")
                .color(Color.white)
                .fontWeight(.light)
        })
        
    }
}

#if DEBUG
struct ZStackPage_Previews : PreviewProvider {
    static var previews: some View {
        ZStackPage()
    }
}
#endif
