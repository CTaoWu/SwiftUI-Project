//
//  TextFieldPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct TextFieldPage : View {
    @State var account: String = ""
    @State var password: String = ""
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                TextField($account, placeholder: Text("请输入用户名"), onEditingChanged: { (true) in
                    
                }) {
                    print(self.account)
                }
                    .frame(width:375)
                
                Divider()
                
                TextField($password, placeholder: Text("请输入密码"), onEditingChanged: { (true) in
                    
                }) {
                    
                }
                    .frame(width:375)
                
                Divider()
                
                TextField($account, placeholder: Text("请输入用户名"), onEditingChanged: { (true) in
                    
                }) {
                    
                    }
                    .frame(width:375)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
            .navigationBarTitle(Text("TextField"))
    }
}

#if DEBUG
struct TextFieldPage_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldPage()
    }
}
#endif
