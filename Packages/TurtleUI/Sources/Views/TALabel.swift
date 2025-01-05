//
//  TALabel.swift
//  TurtleUI
//
//  Created by aristarh on 05.01.2025.
//

import SwiftUI

// MARK: - Label

public struct TALabel: View {
    
    // MARK: - Properties
    
    private let text: String
    private let image: TAImage
    
    public init(text: String, image: TAImage) {
        self.text = text
        self.image = image
    }
    
    // MARK: - Body
    
    public var body: some View {
        HStack(spacing: 14) {
            image
                .frame(width: 12, height: 12)
            Text(text)
                .font(.system(size: 16))
        }
        .padding(.leading, 6)
    }
}

// MARK: - Preview

#Preview {
    TALabel(text: "text", image: .init(.system("person.fill")))
}
