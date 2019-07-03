//
//  ButtonPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ButtonPage : View {
    
    @Environment(\.editMode) var mode
    
    var body: some View {
        
        List {
            NavigationButton(destination: HelloWorldPage()) {
                ContentRow(title: "NavigationButton", description: "带导航栏按钮")
            }
            PresentationButton(destination: HelloWorldPage()) {
                ContentRow(title: "PresentationButton", description: "底部弹出视图的按钮，很像京东加入购物车动画")
            }
            Button.init(action: {
                print("Button被点击")
            }) {
                Text("普通的button")
            }
            EditButton()
            if self.mode?.value == .inactive {
                Text("inactive")
            } else {
                Text("inactive222")
            }
        }
            .navigationBarTitle(Text("Button们"))
    }
}

#if DEBUG
struct ButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
#endif
