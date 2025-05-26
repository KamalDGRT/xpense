//
// View+App.swift
// Xpense
//

import SwiftUI

extension View {
    func embedInScrollView() -> some View {
        ScrollView {
            self
        }
    }
}
