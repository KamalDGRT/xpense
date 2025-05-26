//
// SecondaryButton.swift
// Xpense
//

import SwiftUI

struct SecondaryButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(theme.fonts.semiBold(16))
                .linearGradientText(.primary)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 46)
                .background(theme.colors.white)
        }
        
        .cornerRadius(8)
        .overlay(
            GradientBorderRectangle(gradient: .primary)
        )
    }
}

struct GradientBorderRectangle: View {
    let gradient: Gradient
    let startPoint: UnitPoint
    let endPoint: UnitPoint
    let lineWidth: CGFloat
    let cornerRadius: CGFloat
    
    init(
        gradient: Gradient,
        startPoint: UnitPoint = .top,
        endPoint: UnitPoint = .bottom,
        lineWidth: CGFloat = 1.25,
        cornerRadius: CGFloat = 8
    ) {
        self.gradient = gradient
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.lineWidth = lineWidth
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(
                LinearGradient(
                    gradient: gradient,
                    startPoint: startPoint,
                    endPoint: endPoint
                ),
                lineWidth: lineWidth
            )
    }
}

#if DEBUG
#Preview {
    SecondaryButton(
        text: "Tap Me",
        action: {}
    )
    .padding(16)
}
#endif
