//
// XpenseTheme.swift
// XPense
//

struct XpenseTheme: Theme {
    var colors: ColorTheme { XpenseColorTheme() }
    var fonts: FontTheme { InterFont() }
}
