//
// Gradient.swift
// XPense
//

import SwiftUI

extension Gradient {
    static var primary: Gradient {
        Gradient(
            stops: [
                Gradient.Stop(
                    color: Color(hexString: "#FA1214").opacity(0.8),
                    location: 0
                ),
                Gradient.Stop(
                    color: Color(hexString: "#FE3A82"),
                    location: 0.48
                ),
                Gradient.Stop(
                    color: Color(hexString: "#D2006D").opacity(0.8),
                    location: 1
                )
            ]
        )
    }
}
