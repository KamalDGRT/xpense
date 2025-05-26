//
// WalkThroughIntroView.swift
// Xpense
//

import SwiftUI

struct WalkThroughIntroView: View {
    var body: some View {
        VStack(spacing: .zero) {
            SkipView() {}
                .padding([.trailing, .bottom], 24)
                .padding(.top, 40)
            
            Image(.welcomeBoard)
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
            
            Text("Thank you for using XpenseTracker")
                .font(theme.fonts.semiBold(16))
                .foregroundStyle(theme.colors.coalGray)
                .multilineTextAlignment(.center)
                .padding([.horizontal, .top], 24)
            
            Text("A quick walkthrough of the benefits you get using XpenseTracker")
                .font(theme.fonts.regular(16))
                .foregroundStyle(theme.colors.coalGray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .padding(.top, 16)
            
            PrimaryButton(text: "Get Started") {
                
            }
            .padding(.horizontal, 24)
            .padding(.top, 60)
        }
        .embedInScrollView()
    }
}

#Preview {
    WalkThroughIntroView()
}
