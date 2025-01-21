//
//  ScheduleState.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI
import TurtleUI

public final class ScheduleState: ObservableObject, Tabbable {
    public lazy var tabConfig: TurtleUI.TabConfig = .init(title: "December 13", image: "calendar", screen: AnyView(self.screen))
    
    
    // MARK: - Tabbable
    
//    public lazy var tabConfig: TabConfig = .init(title: "Schedule", image: "calendar", screen: AnyView(self.screen))
    
    // MARK: - Screen
    
    public var screen: ScheduleScreen { ScheduleScreen(state: self) }
    
    // MARK: - Tabbable
    
    // MARK: - Init
    
    public init() {}
}
