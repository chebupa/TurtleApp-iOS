//
//  ContentState.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import Foundation

final class ContentState: ObservableObject {
    
    // MARK: - Screen
    
    var screen: ContentView { ContentView(state: self) }
    
    // MARK: - SubScreens
    
    let tabs: [any Tabbable] = [ScheduleState(), SettingsState()]
    
    // MARK: - Init
    
    init() {}
}
