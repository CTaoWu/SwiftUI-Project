//
//  Badge.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/28.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct Badge : View {
    var body: some View {
        BadgeBackground()
    }
}

#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
