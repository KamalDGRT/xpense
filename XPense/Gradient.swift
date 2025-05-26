//
// Gradient.swift
// XPense
//

import SwiftUI

struct GradientExample: View {
    var body: some View {
        HStack {
            Spacer()
            
            Text("Hello, World!")
                .font(theme.fonts.black(23))
                .linearGradientText(.primary)
            
            Text("Hello, World!")

                .foregroundColor(.black)
           
            Spacer()
        }
        .frame(height: 200)
        .padding()
    }
}

#Preview {
    GradientExample()
}
