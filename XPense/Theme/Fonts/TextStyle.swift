//
// TextStyle.swift
// XPense
//

import SwiftUI

protocol TextStyle: ViewModifier {}

extension View {
    func textStyle<T: TextStyle>(_ modifier: T) -> some View {
        self.modifier(modifier)
    }
}

struct LinearGradientTextStyle: TextStyle {
    let gradient: Gradient
    let startPoint: UnitPoint
    let endPoint: UnitPoint

    func body(content: Content) -> some View {
        content
            .overlay(
                LinearGradient(
                    gradient: gradient,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .mask(content)
    }
}

extension TextStyle where Self == LinearGradientTextStyle {
    static func linearGradient(
        _ gradient: Gradient,
        startPoint: UnitPoint = .top,
        endPoint: UnitPoint = .bottom
    ) -> Self {
        LinearGradientTextStyle(
            gradient: gradient,
            startPoint: startPoint,
            endPoint: endPoint
        )
    }
}
