//
//  CategoryRow.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/29.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
//        VStack(alignment: .leading, spacing: 0) {
            
            Text(self.categoryName)
                .font(.headline)
//                .padding(.leading, 15)
//                .padding(.top, 15)
            
//        ScrollView() {
//                HStack() {
//                    ForEach(self.items) { landmark in
//                        NavigationLink(
//                            destination: LandmarkDetail (
//                                landmark: landmark
//                            )
//                        ) {
//                            CategoryItem(landmark: landmark)
//                        }
//                    }
//                }
//            }
//                .frame(height: 185)
//        }
    }
}

struct CategoryItem : View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark
                .image(forSize: 155)
                .renderingMode(.original)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
                .color(.primary)
        }
            .padding(.leading, 15)
    }
}

#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: landmarkData[0].category.rawValue, items: Array(landmarkData.prefix(3)))
    }
}
#endif
