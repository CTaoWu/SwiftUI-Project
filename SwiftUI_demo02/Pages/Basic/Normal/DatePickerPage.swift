//
//  DatePickerPage.swift
//  SwiftUI_demo02
//
//  Created by 三毛与宝宝 on 2019/7/2.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI
import Combine

struct DatePickerPage : View {

    @ObjectBinding var dateServer = DateServer()
    
    static let goalFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        return formatter
    }()
    
    var body: some View {
        VStack {
            Text("\(dateServer.date, formatter: Self.goalFormat)")

            DatePicker(
                $dateServer.date,
                minimumDate: Calendar.current.date(byAdding: .year, value: -1, to: dateServer.date),
                maximumDate: Calendar.current.date(byAdding: .year, value: 1, to: dateServer.date),
                displayedComponents: .date
            )
            Text("displayedComponents,设置时间选择器样式：date、hourAndMinute").lineLimit(nil)
        }
        
    }
}

final class DateServer: BindableObject  {
    var didChange = PassthroughSubject<DateServer,Never>()
    var date: Date = Date() {
        didSet {
            didChange.send(self)
        }
    }
}

#if DEBUG
struct DatePickerPage_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerPage()
    }
}
#endif
