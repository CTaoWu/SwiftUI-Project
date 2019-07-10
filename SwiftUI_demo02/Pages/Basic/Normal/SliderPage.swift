//
//  SliderPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct SliderPage : View {
    
    @State var bindingValue = 2.0
    var body: some View {
        VStack {
            Text("\(bindingValue)")
            Slider(value: $bindingValue, from: 3, through: 10) { (true) in
                print("\(self.bindingValue)")
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            Text(" from：滑动开始的值，through：最大值")
        }
    }
}

#if DEBUG
struct SliderPage_Previews : PreviewProvider {
    static var previews: some View {
        SliderPage()
    }
}
#endif
