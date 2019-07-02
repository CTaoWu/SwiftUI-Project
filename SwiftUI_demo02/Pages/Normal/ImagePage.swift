//
//  ImagePage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ImagePage : View {
    var body: some View {
        
        ScrollView {
            /// 1. 加载本地图片
            /// 如果没有找到图片，会导致闪退，最好重写方法
            ForEach((1..<13).map{ $0 }){ index in
                Image("\(index)")
                    .resizable()
                    .frame(width: 375, height: 200) // 修改Image的寛高需要先设置resizable()？
                    .tapAction {
                        print("图片加入了点击事件方法\(index)")
                }
            }
        }
            .padding()
            .navigationBarTitle(Text("ImagePage"))
        
        ///http://pic31.nipic.com/20130801/11604791_100539834000_2.jpg
    }
}

#if DEBUG
struct ImagePage_Previews : PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
#endif
