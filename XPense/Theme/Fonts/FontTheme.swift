//
// FontTheme.swift
// XPense
//

import SwiftUI

protocol FontTheme {
    var black: String { get }
    var blackItalic: String { get }
    var bold: String { get }
    var boldItalic: String { get }
    var extraBold: String { get }
    var extraBoldItalic: String { get }
    var extraLight: String { get }
    var extraLightItalic: String { get }
    var italic: String { get }
    var light: String { get }
    var lightItalic: String { get }
    var medium: String { get }
    var mediumItalic: String { get }
    var regular: String { get }
    var semiBold: String { get }
    var semiBoldItalic: String { get }
    var thin: String { get }
    var thinItalic: String { get }
    
    // SwiftUI Fonts
    func black(_ size: CGFloat) -> Font
    func blackItalic(_ size: CGFloat) -> Font
    func bold(_ size: CGFloat) -> Font
    func boldItalic(_ size: CGFloat) -> Font
    func extraBold(_ size: CGFloat) -> Font
    func extraBoldItalic(_ size: CGFloat) -> Font
    func extraLight(_ size: CGFloat) -> Font
    func extraLightItalic(_ size: CGFloat) -> Font
    func italic(_ size: CGFloat) -> Font
    func light(_ size: CGFloat) -> Font
    func lightItalic(_ size: CGFloat) -> Font
    func medium(_ size: CGFloat) -> Font
    func mediumItalic(_ size: CGFloat) -> Font
    func regular(_ size: CGFloat) -> Font
    func semiBold(_ size: CGFloat) -> Font
    func semiBoldItalic(_ size: CGFloat) -> Font
    func thin(_ size: CGFloat) -> Font
    func thinItalic(_ size: CGFloat) -> Font
    
    // UIKit Fonts
    func black(_ size: CGFloat) -> UIFont
    func blackItalic(_ size: CGFloat) -> UIFont
    func bold(_ size: CGFloat) -> UIFont
    func boldItalic(_ size: CGFloat) -> UIFont
    func extraBold(_ size: CGFloat) -> UIFont
    func extraBoldItalic(_ size: CGFloat) -> UIFont
    func extraLight(_ size: CGFloat) -> UIFont
    func extraLightItalic(_ size: CGFloat) -> UIFont
    func italic(_ size: CGFloat) -> UIFont
    func light(_ size: CGFloat) -> UIFont
    func lightItalic(_ size: CGFloat) -> UIFont
    func medium(_ size: CGFloat) -> UIFont
    func mediumItalic(_ size: CGFloat) -> UIFont
    func regular(_ size: CGFloat) -> UIFont
    func semiBold(_ size: CGFloat) -> UIFont
    func semiBoldItalic(_ size: CGFloat) -> UIFont
    func thin(_ size: CGFloat) -> UIFont
    func thinItalic(_ size: CGFloat) -> UIFont
}

// MARK: SwiftUI Fonts
extension FontTheme {
    func black(_ size: CGFloat) -> Font {
        Font.custom(black, size: size)
    }
    
    func blackItalic(_ size: CGFloat) -> Font {
        Font.custom(blackItalic, size: size)
    }
    
    func bold(_ size: CGFloat) -> Font {
        Font.custom(bold, size: size)
    }
    
    func boldItalic(_ size: CGFloat) -> Font {
        Font.custom(boldItalic, size: size)
    }
    
    func extraBold(_ size: CGFloat) -> Font {
        Font.custom(extraBold, size: size)
    }
    
    func extraBoldItalic(_ size: CGFloat) -> Font {
        Font.custom(extraBoldItalic, size: size)
    }
    
    func extraLight(_ size: CGFloat) -> Font {
        Font.custom(extraLight, size: size)
    }
    
    func extraLightItalic(_ size: CGFloat) -> Font {
        Font.custom(extraLightItalic, size: size)
    }
    
    func italic(_ size: CGFloat) -> Font {
        Font.custom(italic, size: size)
    }
    
    func light(_ size: CGFloat) -> Font {
        Font.custom(light, size: size)
    }
    
    func lightItalic(_ size: CGFloat) -> Font {
        Font.custom(lightItalic, size: size)
    }
    
    func medium(_ size: CGFloat) -> Font {
        Font.custom(medium, size: size)
    }
    
    func mediumItalic(_ size: CGFloat) -> Font {
        Font.custom(mediumItalic, size: size)
    }
    
    func regular(_ size: CGFloat) -> Font {
        Font.custom(regular, size: size)
    }
    
    func semiBold(_ size: CGFloat) -> Font {
        Font.custom(semiBold, size: size)
    }
    
    func semiBoldItalic(_ size: CGFloat) -> Font {
        Font.custom(semiBoldItalic, size: size)
    }
    
    func thin(_ size: CGFloat) -> Font {
        Font.custom(thin, size: size)
    }
    
    func thinItalic(_ size: CGFloat) -> Font {
        Font.custom(thinItalic, size: size)
    }
}

// MARK: UIKit Fonts
extension FontTheme {
    func black(_ size: CGFloat) -> UIFont {
        UIFont(name: black, size: size) ?? .systemFont(ofSize: size, weight: .black)
    }
    
    func blackItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: blackItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .black)
    }
    
    func bold(_ size: CGFloat) -> UIFont {
        UIFont(name: bold, size: size) ?? .systemFont(ofSize: size, weight: .bold)
    }
    
    func boldItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: boldItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .bold)
    }
    
    func extraBold(_ size: CGFloat) -> UIFont {
        UIFont(name: extraBold, size: size) ?? .systemFont(ofSize: size, weight: .heavy)
    }
    
    func extraBoldItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: extraBoldItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .heavy)
    }
    
    func extraLight(_ size: CGFloat) -> UIFont {
        UIFont(name: extraLight, size: size) ?? .systemFont(ofSize: size, weight: .ultraLight)
    }
    
    func extraLightItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: extraBoldItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .ultraLight)
    }
    
    func italic(_ size: CGFloat) -> UIFont {
        UIFont(name: italic, size: size) ?? .italicSystemFont(ofSize: size)
    }
    
    func light(_ size: CGFloat) -> UIFont {
        UIFont(name: light, size: size) ?? .systemFont(ofSize: size, weight: .light)
    }
    
    func lightItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: lightItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .light)
    }
    
    func medium(_ size: CGFloat) -> UIFont {
        UIFont(name: medium, size: size) ?? .systemFont(ofSize: size, weight: .medium)
    }
    
    func mediumItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: mediumItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .medium)
    }
    
    func regular(_ size: CGFloat) -> UIFont {
        UIFont(name: regular, size: size) ?? .systemFont(ofSize: size, weight: .regular)
    }
    
    func semiBold(_ size: CGFloat) -> UIFont {
        UIFont(name: semiBold, size: size) ?? .systemFont(ofSize: size, weight: .semibold)
    }
    
    func semiBoldItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: semiBoldItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .semibold)
    }
    
    func thin(_ size: CGFloat) -> UIFont {
        UIFont(name: thin, size: size) ?? .systemFont(ofSize: size, weight: .thin)
    }
    
    func thinItalic(_ size: CGFloat) -> UIFont {
        UIFont(name: thinItalic, size: size) ?? .italicSystemFont(ofSize: size, weight: .thin)
    }
}
