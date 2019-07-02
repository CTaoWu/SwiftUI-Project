//
//  ProfileEditor.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/29.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

struct ProfileEditor : View {
    
    @Binding var profile: Profile
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField($profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            
            VStack(alignment: .center, spacing: 20) {
                Text("Seasonal Photo").bold()
                
                SegmentedControl(selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases.identified(by: \.self)) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
                .padding(.top)
            
            VStack(alignment: .center, spacing: 20) {
                Text("Goal Photo").bold()
                DatePicker(
                    $profile.goalDate,
                    minimumDate: Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate),
                    maximumDate: Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate),
                    displayedComponents: .date
                           )
            }
        }
    }
}

#if DEBUG
struct ProfileEditor_Previews : PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
#endif
