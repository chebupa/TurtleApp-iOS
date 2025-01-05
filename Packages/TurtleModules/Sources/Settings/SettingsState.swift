//
//  SettingsState.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI
import TurtleUI

public final class SettingsState: ObservableObject, Tabbable {
    
    // MARK: Tabbable
    
    public lazy var tabConfig: TabConfig = .init(title: "Settings", image: "gear", screen: AnyView(self.screen))
    
    // MARK: Screen
    
    public var screen: SettingsScreen { SettingsScreen(state: self) }
    
    // MARK: Init
    
    public init() {}
}
