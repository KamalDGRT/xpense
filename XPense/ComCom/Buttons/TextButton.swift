//
// TextButton.swift
// Xpense
//

import SwiftUI

struct TextButton: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(theme.fonts.semiBold(16))
                .linearGradientText(.primary)
                .background(theme.colors.white)
        }
    }
}

#if DEBUG
#Preview {
    TextButton(
        text: "Text Button",
        action: {}
    )
}
#endif
