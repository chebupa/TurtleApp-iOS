//
//  TAImage.swift
//  TurtleUI
//
//  Created by aristarh on 05.01.2025.
//

import SwiftUI

// MARK: - View

public struct TAImage: View {
    
    // MARK: - Properties
    
    public enum TAImageType {
        
        case system(String)
        case custom(String)
    }
    
    private let type: TAImage.TAImageType
    
    public init(_ type: TAImage.TAImageType) {
        self.type = type
    }
    
    // MARK: - Body
    
    public var body: some View {
        switch type {
        case .system(let name):
            Image(systemName: name)
        case .custom(let name):
            Image(name)
        }
    }
}

// MARK: - Preview

#Preview {
    TAImage(.system("person.fill"))
}
