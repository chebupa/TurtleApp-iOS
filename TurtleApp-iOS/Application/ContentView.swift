//
//  ContentView.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

// MARK: - View

struct ContentView: View {
    
    // MARK: - Properties
    
    @StateObject var state: ContentState
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(state.tabs, id: \.id) { tab in
                NavigationStack {
                    tab.tabConfig.screen
                        .navigationTitle(tab.tabConfig.title)
                }
                .tabItem { Label(tab.tabConfig.title, systemImage: tab.tabConfig.image) }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    ContentView(state: ContentState())
}
