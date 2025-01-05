//
//  ScheduleScreen.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

public struct ScheduleScreen: View {
    
    @StateObject var state: ScheduleState
    
    public var body: some View {
        Text("Schedule")
    }
}

#Preview {
    ScheduleScreen(state: .init())
}
