//
//  UserData.swift
//  SwiftUI-Demo01
//
//  Created by 三毛与宝宝 on 2019/6/28.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: BindableObject  {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
