//
//  SettingsState.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

final class SettingsState: ObservableObject, Tabbable {
    
    // MARK: - Tabbable
    
    lazy var tabConfig: TabConfig = .init(title: "Settings", image: "gear", screen: AnyView(self.screen))
    
    // MARK: - Screen
    
    var screen: SettingsScreen { SettingsScreen(state: self) }
    
    // MARK: - Init
    
    init() {}
}
