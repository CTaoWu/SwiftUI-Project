//
//  HikeView.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/29.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

extension AnyTransition{
    static var moveAndFade: AnyTransition {
        
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale()
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct HikeView : View {
    
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        
        VStack {
            HStack {
                
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                    .animation(nil)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(hike.name).font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.basic(duration: 4)) {
                        self.showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees((showDetail ? 90 : 0)))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike).transition(.moveAndFade)
            }
        }
    }
}

#if DEBUG
struct HikeView_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            
            HikeView(hike: hikeData[0]).padding()
            Spacer()
        }
    }
}
#endif
