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
    @State private var images = ["home", "msg", "preview", "user"]
    @State private var labs = ["home", "msg", "preview", "user"]
    @State private var pageTitle = "首页"
    private var titles = ["1", "2", "3", "4"]
    var body: some View {
        /// .tag()修改，放在view后面，
        NavigationView {
            TabbedView(selection: $currentIndex) {
                FirstPage()
                    .tabItem(){
                        VStack {
                            Image(self.images[0])
                            Text(self.labs[0])
                        }
                }.tag(0).onAppear(){}
                SecondPage()
                    .tabItem(){
                        VStack {
                            Image(self.images[1])
                            Text(self.labs[1])
                        }
                }.tag(1).onAppear(){}
                ThirdPage()
                    .tabItem(){
                        VStack {
                            Image(self.images[2])
                            Text(self.labs[2])
                        }
                }.tag(2).onAppear(){}
                ContentView()
                    .tabItem(){
                        VStack {
                            Image(self.images[3])
                            Text(self.labs[3])
                        }
                }.tag(3).onAppear(){}
            }
            .navigationBarTitle(Text(pageTitle))
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
