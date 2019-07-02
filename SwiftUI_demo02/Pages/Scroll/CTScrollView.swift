//
//  ScrollView.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/1.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct CTScrollView : View {
    var imageName: [String]
    
    var body: some View {
        /// ScrollView支持滚动声明
        ScrollView() {
            /// 水平滚动
            HStack () {
                Image("1")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
                Image("2")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }

                Image("3")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }

                Image("4")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
                Image("5")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
                Image("6")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
            }
//            ZStack {
            /// 垂直滚动
            VStack(alignment: .leading, spacing: 5) {
                Image("1")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
                Image("2")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }

                Image("3")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }

                Image("4")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
                Image("5")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
                Image("6")
                    .resizable()
                    .frame(width: 180,
                           height: 180,
                           alignment: .center)
                    .tapAction {
                }
            }
//        }
////                ForEach(self.imageName) { landmark in
////
////                    Image(landmark)
////                        .resizable()
////                        .frame(width: 180,
////                               height: 180,
////                               alignment: .center)
////                        .tapAction {
////                    }
////                }
//            }
        }
        .navigationBarTitle(Text("ScrollView"))
    }
}


#if DEBUG
struct CTScrollView_Previews : PreviewProvider {
    static var previews: some View {
        CTScrollView(imageName: [])
    }
}
#endif
