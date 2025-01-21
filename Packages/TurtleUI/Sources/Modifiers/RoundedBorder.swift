//
//  RoundedBorder.swift
//  TurtleUI
//
//  Created by aristarh on 05.01.2025.
//

import SwiftUI

// MARK: - Modifier

public struct RoundedBorder: ViewModifier {
    
    public let cornerRadius: CGFloat
    public let lineWidth: CGFloat
    public let color: Color
    
    public func body(content: Content) -> some View {
        content
            .clipShape(.rect(cornerRadius: cornerRadius))
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: lineWidth)
                    .stroke(color, lineWidth: lineWidth)
            }
    }
}

// MARK: - View extension

public extension View {
    
    func roundedBorder(cornerRadius: CGFloat, lineWidth: CGFloat, color: Color) -> some View {
        modifier(RoundedBorder(cornerRadius: cornerRadius, lineWidth: lineWidth, color: color))
    }
}
