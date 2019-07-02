//
//  HStackPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/1.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct HStackPage : View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 10) {
            /// alignment:成员排列位置（如，全部从中间开始.center;全部从头开始.leading）\nspacing:成员之间的间距
            Text("第一组内容").lineLimit(nil)
            Text("第二组内容").lineLimit(nil)
            Text("第三组内容").lineLimit(nil)
            Text("第四四四四四四四四四四四四四四四四四四四四四四四四四四四四四四四四组内容").lineLimit(nil)
            Text("第555555555555555555555组内容").lineLimit(nil)
        }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
    }
}

#if DEBUG
struct HStackPage_Previews : PreviewProvider {
    static var previews: some View {
        HStackPage()
    }
}
#endif
