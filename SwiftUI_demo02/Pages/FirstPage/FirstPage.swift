//
//  FirstPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct FirstPage : View {
    var body: some View {
        
        // 注:不能在创建body里面设置状态
//        CategoryHome().environmentObject(UserData())
        Text("firstPage")
    }
}

#if DEBUG
struct FirstPage_Previews : PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
#endif
