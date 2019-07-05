//
//  TmpPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/5.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct TmpPage : View {
    var body: some View {
        NavigationButton(destination: HelloWorldPage()) {
            Text("TmpPage点我点我")
        }
    }
}

#if DEBUG
struct TmpPage_Previews : PreviewProvider {
    static var previews: some View {
        TmpPage()
    }
}
#endif
