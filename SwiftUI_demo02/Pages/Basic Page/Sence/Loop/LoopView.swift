//
//  LoopView.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct LoopView<Page: View> : View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        self.viewControllers = views.map{ UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            LoopViewController(currentPage: $currentPage, controllers: viewControllers)
            LoopControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
        }
    }
}


#if DEBUG
struct LoopView_Previews : PreviewProvider {
    static var previews: some View {
        LoopView(features.map { LoopViewCard(landmark: $0) })
//            .aspectRatio(3/2, contentMode: .fit)
    }
}
#endif
