//
//  DividerPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct DividerPage : View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Divider放在VStack里，则默认是水平线条")
                Divider()
            }
            HStack {
                Text("Divider放在HStack里，则默认是垂直线条")
                Divider()
                Text("DividerPage").lineLimit(nil)
            }
        }
    }
}

#if DEBUG
struct DividerPage_Previews : PreviewProvider {
    static var previews: some View {
        DividerPage()
    }
}
#endif
