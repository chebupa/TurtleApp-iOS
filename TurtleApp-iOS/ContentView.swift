//
//  ContentView.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI
import TurtleUI
import TurtleModules

// MARK: - View

struct ContentView: View {
    
    // MARK: Properties
    
    private let tabs: [any Tabbable] = [ScheduleState(), SettingsState()]
    
    // MARK: Body
    
    var body: some View {
        TabView {
            ForEach(tabs, id: \.id) { tab in
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
    ContentView()
}
