//
//  StepperPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct StepperPage : View {
    @State var bindingValue: Int = 0

    var body: some View {
        
//        Stepper(value: $bindingValue, step: 1, onEditingChanged: { c in
//            print(c)
//        }) {
//            Text("\(self.bindingValue)")
//        }
        VStack {
            Stepper(value: $bindingValue, in: (0...99), step: 1, onEditingChanged: { (true) in
                
            }) {
                Text("\(self.bindingValue)")
            }
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
            Text("in: 设置最小和最大值，step: 设置每次点击的时候的差值").lineLimit(nil)
        }
    }
}

#if DEBUG
struct StepperPage_Previews : PreviewProvider {
    static var previews: some View {
        StepperPage()
    }
}
#endif
