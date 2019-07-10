//
//  ContentRow.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/1.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ContentRow : View {
    
    private let title: String
    private let description: String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    var body: some View {
        /** VStack：声明垂直布局*/
        VStack(alignment: .leading, spacing: 3, content: {
            Text(title).bold()
            Spacer()
            Text(description)
                .font(.subheadline)
                .opacity(0.8)
                .lineLimit(nil)
        })
    }
}

#if DEBUG
struct ContentRow_Previews : PreviewProvider {
    static var previews: some View {
        ContentRow(title: "不知道这里要怎么初始化", description: "不知道这里要怎么初始化")
    }
}
#endif
