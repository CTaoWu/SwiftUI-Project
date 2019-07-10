//
//  FormPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/5.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct FormPage : View {
    
    @State private var date = Date()
    @State private var selection = 0

    var body: some View {
//        NavigationView {
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
                    }).onDisappear(){
                        
                    }
                }
                }
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle(Text("表单使用"))
//        }

    }
}

#if DEBUG
struct FormPage_Previews : PreviewProvider {
    static var previews: some View {
        FormPage()
    }
}
#endif
