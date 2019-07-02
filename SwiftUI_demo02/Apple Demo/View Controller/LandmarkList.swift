//
//  LandmarkList.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/28.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    @EnvironmentObject private var userData: UserData

    var body: some View {
//        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(landmarkData) { landmark in
                    
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }        .navigationBarTitle(Text("导航栏").fontWeight(.bold).color(Color.black), displayMode: .large)
//        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
#endif
