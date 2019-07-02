//
//  LandmarkDetail.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/28.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    @EnvironmentObject private var userData: UserData
    var landmark: Landmark
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            /** padding偏移量.bottom(从哪里开始便宜), length偏移位置是多少 */

            CircleImage(image: landmark.image(forSize: 250))
                .offset(x: 0, y:  -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack(alignment: .top, spacing: 10) {
                    Text("垂直控件VStack").font(.headline)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(Color.yellow)

                        } else {
                            Image(systemName: "star").foregroundColor(Color.gray)

                        }
                    }
                }
                
                HStack(alignment: .top, spacing: 0) {
                    Text("水平布局的控件HStack").font(.subheadline)
                    Spacer()
                    Text("水平布局的控件HStack").font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(
            Text(landmark.name),
            displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0]).environmentObject(UserData())
    }
}
#endif
