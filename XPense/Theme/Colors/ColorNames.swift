//
// ColorNames.swift
// XPense
//

import SwiftUI

enum ColorNames: String {
    case ashGray = "Gray/Ash"
    case coalGray = "Gray/Coal"
    case ironGray = "Gray/Iron"
    case mistGray = "Gray/Mist"
    case slateGray = "Gray/Slate"
    
    case amber = "Other/Amber"
    case blue = "Other/Blue"
    case green = "Other/Green"
    case mutedGray = "Other/MutedGray"
    case red = "Other/Red"
    
    case white = "White/Pure"
}

extension ColorNames {
    var color: Color {
        Color(rawValue)
    }
    
    var uiColor: UIColor {
        guard let color = UIColor(named: rawValue) else {
            fatalError("\(rawValue) Color is missing from the asset catalog.")
        }
        return color
    }
}
