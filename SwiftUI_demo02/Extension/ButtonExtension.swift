//
//  ButtonExtension.swift
//  SwiftUI_demo02
//
//  Created by 吴传涛 on 2019/7/10.
//  Copyright © 2019 SwiftUI学习之路. All rights reserved.
//

import SwiftUI

/// tks：https://www.youtube.com/watch?v=slzc0-24q-I
extension StaticMember where Base: ButtonStyle {
    static var rounded: StaticMember<RounderButton> {
        return .init(RounderButton())
    }
    
    static var primaryFullWidth: StaticMember<PrimaryFullWidthButton> {
        return .init(PrimaryFullWidthButton())
    }
    
    static var secondaryFullWidth: StaticMember<SecondaryFullWidthButton> {
        return .init(SecondaryFullWidthButton())
    }
}

public struct RounderButton: ButtonStyle {
    public func body(configuration: Button<Self.Label>, isPressed: Bool) -> some View {
        configuration
            .accentColor(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
    }
}

public struct PrimaryFullWidthButton: ButtonStyle {
    public func body(configuration: Button<Self.Label>, isPressed: Bool) -> some View {
        configuration
            .accentColor(isPressed ? .red : .white)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(isPressed ? Color.clear : Color.red)
            .cornerRadius(10)
            .padding([.leading, .trailing])
    }
}

public struct SecondaryFullWidthButton: ButtonStyle {
    public func body(configuration: Button<Self.Label>, isPressed: Bool) -> some View {
        configuration
            .accentColor(.red)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .border(Color.red, cornerRadius: 10)
            .padding([.leading, .trailing])
    }
}
