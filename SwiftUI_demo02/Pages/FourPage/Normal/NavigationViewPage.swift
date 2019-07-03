//
//  NavigationViewPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI
//import UIKit

struct NavigationViewPage : View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .center, content: {
                Image("1")
                    .resizable()
                    .blur(radius: 1)
                    .frame(width: UIScreen.main.bounds.width, height: 44)
                Text("导航栏").bold().color(.white)
            })
        }
            .navigationBarTitle(Text("NavigationView"))
    }
}

#if DEBUG
struct NavigationViewPage_Previews : PreviewProvider {
    static var previews: some View {
        NavigationViewPage()
    }
}
#endif
