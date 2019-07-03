//
//  GroupPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct GroupPage : View {
    var body: some View {
        VStack {
            Group {
                Text("视图集合1")
                Text("用处。。。。")
            }
            Group {
                Text("视图集合2")
                Text("规范化")
            }
        }
    }
}

#if DEBUG
struct GroupPage_Previews : PreviewProvider {
    static var previews: some View {
        GroupPage()
    }
}
#endif
