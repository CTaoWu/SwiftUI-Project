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
        
        CategoryHome().environmentObject(UserData())
    }
}

#if DEBUG
struct FirstPage_Previews : PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
#endif
