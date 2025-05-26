//
// ColorNames.swift
// XPense
//

import SwiftUI

enum ColorNames: String {
    /// Black 01 - Hex Code -  #2B2B2B
    case coalGray = "Gray/Coal"
    
    /// Black 02 - Hex Code - #555555
    case ironGray = "Gray/Iron"
    
    /// Black 03 - Hex Code - #808080
    case slateGray = "Gray/Slate"
    
    /// Black 04 - Hex Code - #AAAAAA
    case ashGray = "Gray/Ash"
    
    /// Black 05 - Hex Code - #D5D5D5
    case mistGray = "Gray/Mist"
    
    /// Hex Code - #EAA221
    case amber = "Other/Amber"
    
    /// Hex Code - #2D77F1
    case blue = "Other/Blue"
    
    /// Hex Code - #1D9E33
    case green = "Other/Green"
    
    /// Hex Code - #637381
    case mutedGray = "Other/MutedGray"
    
    /// Hex Code - #F42828
    case red = "Other/Red"
    
    /// Hex Code - #FFFFFF
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
