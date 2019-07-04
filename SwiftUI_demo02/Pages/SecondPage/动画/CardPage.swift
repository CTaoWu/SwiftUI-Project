//
//  CardPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/4.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct CardPage : View {
    @State var viewState = CGSize.zero
    var body: some View {
        ZStack {
            CardBack()
                .animation(.spring())
                .offset(y: viewState.height > 100 ? -100 : 0)
                .tapAction {
                    self.viewState = .zero
            }
            
            Card().offset(y: viewState.height).animation(.spring())
            .gesture(
                DragGesture()
                    .onChanged({ (value) in
                        self.viewState = value.translation
                    })
                    .onEnded({ (value) in
                        if self.viewState.height > 200 {
                            self.viewState = CGSize(width: 0, height: 800)
                        } else {
                            self.viewState = .zero
                        }
                    })
            )
        }
            .padding(.top, 100)
    }
}

struct Card: View {
    var body: some View {
        VStack {
            Text("Card")
            Image("1").fixedSize()
        }.background(Color.pink)
    }
}

struct CardBack: View {
    var body: some View {
        VStack {
            Text("CardBack")
            Image("2").fixedSize()
        }.background(Color.blue)
    }
}

#if DEBUG
struct CardPage_Previews : PreviewProvider {
    static var previews: some View {
        CardPage()
    }
}
#endif
