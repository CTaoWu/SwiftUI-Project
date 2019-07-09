//
//  ThirdPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ThirdPage : View {
    var body: some View {
        NavigationLink(destination: HelloWorldPage()) {
            Text("ThirdPage点我点我")
        }
    }
}

#if DEBUG
struct ThirdPage_Previews : PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
#endif
