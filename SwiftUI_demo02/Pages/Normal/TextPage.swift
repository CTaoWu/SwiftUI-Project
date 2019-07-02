//
//  TextPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct TextPage : View {
    var body: some View {
        List() {
            VStack(alignment: .center, spacing: 10, content: {
                Text("bold加粗").bold()
//                Divider()
                Text("fontWeight还有更多设置").fontWeight(.heavy)
//                Divider()
                Text("Color.颜色").color(Color.yellow)
//                Divider()
                Text("strikethrough是文本里面加横线").strikethrough()
//                Divider()
                Text("strikethrough内有个Color属性，划线的颜色").strikethrough(true, color: Color.green)
//                Divider()
                Text("underline属性").underline(true, color: Color.red)
//                Divider()
                Text("kerning是间距属性").kerning(15)
//                Divider()
                Text("italic属性").italic()
//                Divider()
                Text("*******************lineSpacing：行间距属性\nlineLimit:行数限制，传nil则不限制*******************")
                    .lineSpacing(20)
                    .lineLimit(nil)
                Text("blur:模糊属性").blur(radius: 1)
//                Text("还有很多的属性，慢慢看了……")
//                    .underline(true, color: Color.red)
//                    .bold()
            })
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        }
    }
}

#if DEBUG
struct TextPage_Previews : PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
#endif
