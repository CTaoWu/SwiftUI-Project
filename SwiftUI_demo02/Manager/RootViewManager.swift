//
//  RootViewManager.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/3.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct RootViewManager : View {
    @State private var currentIndex = 0
    @State private var pageTitle = "首页"
    var body: some View {
        /// .tag()修改，放在view后面，
        NavigationView {
            TabbedView(selection: $currentIndex) {
                FirstPage()
                    .tabItem(){
                        RootViewItem(index: 0)
                }.tag(0).onAppear{self.pageTitle = "首页"}
                SecondPage()
                    .tabItem(){
                        RootViewItem(index: 1)
                }.tag(1).onAppear{self.pageTitle = "2"}
                ThirdPage()
                    .tabItem(){
                        RootViewItem(index: 2)
                }.tag(2).onAppear{self.pageTitle = "3"}
                ContentView()
                    .tabItem(){
                        RootViewItem(index: 3)
                }.tag(3).onAppear{self.pageTitle = "4"}
            }
            .navigationBarTitle(Text(pageTitle))
        }
    }
}

private struct RootViewItem: View {
    var index: Int = 0
    
    @State private var images = ["home", "msg", "preview", "user"]
    @State private var labs = ["home", "msg", "Extension", "Basic"]
    var body: some View {
        VStack {
            Image(self.images[index])
            Text(self.labs[index])
        }
    }
}
#if DEBUG
struct RootViewManager_Previews : PreviewProvider {
    static var previews: some View {
        RootViewManager()
    }
}
#endif
