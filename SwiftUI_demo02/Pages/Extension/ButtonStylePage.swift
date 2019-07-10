//
//  ButtonStylePage.swift
//  SwiftUI_demo02
//
//  Created by 吴传涛 on 2019/7/10.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ButtonStylePage : View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Test1")
            }
            .buttonStyle(.rounded)
            
            Button(action: {}) {
                Text("Test2")
            }
            .buttonStyle(.primaryFullWidth)
                .mask(Circle())
            
            Button(action: {}) {
                Text("Test3")
            }
            .buttonStyle(.primaryFullWidth)
            
            Button(action: {}) {
                Text("Test4")
            }
            .buttonStyle(.secondaryFullWidth)
        }
    }
}


#if DEBUG
struct ButtonStylePage_Previews : PreviewProvider {
    static var previews: some View {
        ButtonStylePage()
    }
}
#endif
