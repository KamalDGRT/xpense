//
// WalkThroughItemView.swift
// Xpense
//

import SwiftUI

struct WalkThroughItemView: View {
    let walkThrough: WalkThrough
    let buttonAction: () -> Void
    
    var body: some View {
        VStack(spacing: .zero) {
            Image(walkThrough.image)
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
                .padding(.horizontal, 24)
            
            Text(walkThrough.title)
                .font(theme.fonts.semiBold(16))
                .foregroundStyle(theme.colors.coalGray)
                .multilineTextAlignment(.center)
                .padding([.horizontal, .top], 24)
            
            Text(walkThrough.description)
                .font(theme.fonts.regular(16))
                .foregroundStyle(theme.colors.coalGray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding(.top, 16)
            
            PrimaryButton(text: walkThrough.buttonText) {
                buttonAction()
            }
            .padding(.horizontal, 24)
            .padding(.top, 60)
        }
    }
}
