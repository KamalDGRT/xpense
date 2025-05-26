//
// TextStyle.swift
// XPense
//

import SwiftUI

protocol TextStyle: ViewModifier {}

extension View {
    func linearGradientText(
        _ gradient: Gradient,
        startPoint: UnitPoint = .top,
        endPoint: UnitPoint = .bottom
    ) -> some View {
        self.modifier(LinearGradientTextStyle(
            gradient: gradient,
            startPoint: startPoint,
            endPoint: endPoint
        ))
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
                    startPoint: startPoint,
                    endPoint: endPoint
                )
            )
            .mask(content)
    }
}
