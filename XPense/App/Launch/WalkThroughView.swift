//
// WalkThroughView.swift
// Xpense
//

import SwiftUI

struct WalkThroughView: View {
    @StateObject private var viewModel: WalkThroughViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: WalkThroughViewModel())
    }
    
    var body: some View {
        VStack(spacing: .zero) {
            SkipView() {
                withAnimation(.interactiveSpring) {
                    viewModel.resetStep()
                }
            }
            .padding([.trailing, .bottom], 24)
            .padding(.top, 40)
            
            WalkThroughItemView(
                walkThrough: viewModel.getCurrentItem(),
                buttonAction: {
                    withAnimation(.interactiveSpring) {
                        viewModel.incrementStep()
                    }
                }
            )
            
        }
        .embedInScrollView()
    }
}

#Preview {
    WalkThroughView()
}
