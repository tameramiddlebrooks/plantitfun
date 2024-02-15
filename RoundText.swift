//
//  RoundText.swift
//  GrowHome
//
//  Created by Nigel Krajewski on 1/27/22.
//

import SwiftUI

/*
 ViewModifier and extension to use SF Round font with
 the specified Dynamic TextStyle
 */
struct RoundText: ViewModifier {
    let style: Font.TextStyle?
    
    func body(content: Content) -> some View {
        let currentStyle = style ?? .body
        
        switch currentStyle {
        case .body :
            content.font(.system(.body, design: .rounded))
        case .title :
            content.font(.system(.title, design: .rounded))
        case .title2 :
            content.font(.system(.title2, design: .rounded))
        case .title3 :
            content.font(.system(.title3, design: .rounded))
        case .largeTitle :
            content.font(.system(.largeTitle, design: .rounded))
        case .headline :
            content.font(.system(.headline, design: .rounded))
        case .subheadline :
            content.font(.system(.subheadline, design: .rounded))
        case .callout :
            content.font(.system(.callout, design: .rounded))
        case .caption :
            content.font(.system(.caption, design: .rounded))
        case .caption2 :
            content.font(.system(.caption2, design: .rounded))
        case .footnote :
            content.font(.system(.footnote, design: .rounded))
        default:
            content.font(.system(.body, design: .rounded))
        }
    }
}

extension View {
    func sfRoundFontStyle(_ style: Font.TextStyle? = nil) -> some View {
        if style == nil {
            return modifier(RoundText(style: .body))
        } else {
            return modifier(RoundText(style: style))
        }
    }
    
    func sfRoundFontStyle() -> some View {
        modifier(RoundText(style: .body))
    }
}
