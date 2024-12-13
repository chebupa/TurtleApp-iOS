//
//  ScheduleScreen.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

struct ScheduleScreen: View {
    
    @StateObject var state: ScheduleState
    
    var body: some View {
        Text("Schedule")
    }
}

#Preview {
    ScheduleScreen(state: .init())
}
