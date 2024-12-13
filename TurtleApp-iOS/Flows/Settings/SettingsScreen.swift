//
//  SettingsScreen.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

// MARK: - Screen

struct SettingsScreen: View {
    
    // MARK: - Properties
    
    @StateObject var state: SettingsState
    
    // MARK: - Body
    
    var body: some View {
        Text("Settings")
    }
}

// MARK: - Preview

#Preview {
    SettingsScreen(state: .init())
}
