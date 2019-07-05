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
    @State var isFilpped = false
    var body: some View {

        Image(isFilpped ? "1": "2")
            .resizable()
            .frame(width: 300, height: 200)
            .cornerRadius(10)
            .shadow(radius: 10, x: 10, y: 10)
            .rotation3DEffect(Angle(degrees: isFilpped ? 180: 0), axis: (x: 0, y: 15.0, z: 0.0))
            .gesture(TapGesture().onEnded({ (value) in
                withAnimation(.spring(initialVelocity: 15)){
                    self.isFilpped.toggle()
                }
            }))
//        ZStack {
//            CardBack()
//                .animation(.spring())
//                .offset(y: viewState.height > 100 ? -100 : 0)
//                .tapAction {
//                    self.viewState = .zero
//            }
//
//            Card().offset(y: viewState.height).animation(.spring())
//            .gesture(
//                DragGesture()
//                    .onChanged({ (value) in
//                        self.viewState = value.translation
//                    })
//                    .onEnded({ (value) in
//                        if self.viewState.height > 200 {
//                            self.viewState = CGSize(width: 0, height: 800)
//                        } else {
//                            self.viewState = .zero
//                        }
//                    })
//            )
//        }
//        .edgesIgnoringSafeArea(.top)
//        .navigationBarHidden(true)
    }
}

struct Card: View {
    var body: some View {
        VStack {
            Image("1")
        }
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
