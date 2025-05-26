//
// SkipView.swift
// Xpense
//

import SwiftUI

struct SkipView: View {
    let action: () -> Void
    var body: some View {
        HStack(spacing: .zero) {
            Spacer()
            
            Button(action: action) {
                Text("Skip")
                    .font(theme.fonts.medium(16))
                    .foregroundStyle(theme.colors.ironGray)
            }
        }
    }
}

#Preview {
    SkipView() {}
}
