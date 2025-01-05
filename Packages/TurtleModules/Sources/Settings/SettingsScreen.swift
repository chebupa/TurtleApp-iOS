//
//  SettingsScreen.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

// MARK: - Screen

public struct SettingsScreen: View {
    
    // MARK: - Properties
    
    @StateObject var state: SettingsState
    
    // MARK: - Body
    
    public var body: some View {
        Text("Settings")
    }
}

// MARK: - Preview

#Preview {
    SettingsScreen(state: .init())
}
