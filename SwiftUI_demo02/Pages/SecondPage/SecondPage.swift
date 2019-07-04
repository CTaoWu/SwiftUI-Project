//
//  SecondPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct SecondPage : View {
    @State private var selection = 0
    @State private var quantity = 0
    @State private var date = Date()
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("表单")) {
                    DatePicker($date, label: { Text("Due Date") })
                    Picker(selection: $selection, label:
                        Text("Picker Name")
                        , content: {
                            Text("Value 1").tag(0)
                            Text("Value 2").tag(1)
                            Text("Value 3").tag(2)
                            Text("Value 4").tag(3)
                    })
                }
                Section(header: Text("动画")) {
                    NavigationButton(destination: CardPage()) {
                        Text("卡片显示")
                    }
                }
            }
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle(Text("特殊"))
        }
    }
}

#if DEBUG
struct SecondPage_Previews : PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
#endif
