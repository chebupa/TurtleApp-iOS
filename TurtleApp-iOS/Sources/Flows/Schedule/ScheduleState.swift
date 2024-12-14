//
//  ScheduleState.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

final class ScheduleState: ObservableObject, Tabbable {
    
    // MARK: - Tabbable
    
    lazy var tabConfig: TabConfig = .init(title: "Schedule", image: "calendar", screen: AnyView(self.screen))
    
    // MARK: - Screen
    
    var screen: ScheduleScreen { ScheduleScreen(state: self) }
    
    // MARK: - Tabbable
    
    // MARK: - Init
    
    init() {}
}
