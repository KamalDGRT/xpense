//
// Theme.swift
// XPense
//

import SwiftUI

protocol Theme {
    var colors: ColorTheme { get }
    var fonts: FontTheme { get }
}

let theme = XpenseTheme()
