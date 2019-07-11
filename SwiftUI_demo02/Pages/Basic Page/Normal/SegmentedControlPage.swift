//
//  SegmentedControlPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct SegmentedControlPage : View {
    @State var currentIndex = 0
    var body: some View {
            VStack(alignment: .center) {
                ///    public init(selection: Binding<SelectionValue>, content: () -> Content)
                SegmentedControl(selection: $currentIndex) {
                    ForEach((0..<4).map{ $0 }){ index in
                        Text("\(index)")
                    }
                    }.tapAction {
                        print("\(self.currentIndex)")
                }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .colorScheme(ColorScheme.light)
                List {
                    Text("\(self.currentIndex)")
                    Text("\(self.currentIndex)")
                    Text("\(self.currentIndex)")
                }
            }.navigationBarTitle(Text("SegmentedControl"))
    }
}

#if DEBUG
struct SegmentedControlPage_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlPage()
    }
}
#endif
