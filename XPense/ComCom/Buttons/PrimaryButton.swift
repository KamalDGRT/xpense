//
// PrimaryButton.swift
// Xpense
//

import SwiftUI

struct PrimaryButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(theme.fonts.semiBold(16))
                .foregroundStyle(theme.colors.white)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 46)
        }
        .background(
            LinearGradient(
                gradient: .primary,
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(8)
        .contentShape(Rectangle())
    }
}

#if DEBUG
#Preview {
    PrimaryButton(
        text: "Tap Me",
        action: {}
    )
    .padding(16)
}
#endif
