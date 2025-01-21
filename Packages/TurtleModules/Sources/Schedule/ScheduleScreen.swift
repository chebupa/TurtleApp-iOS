//
//  ScheduleScreen.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI
import TurtleUI

public struct ScheduleScreen: View {
    
    @StateObject var state: ScheduleState
    
    public var body: some View {
        ScrollView {
            SubjectWidget(config: .init(isGoingNow: false))
                .padding(.top)
                .padding(.horizontal)
            SubjectWidget(config: .init(isGoingNow: true))
                .padding(.top)
                .padding(.horizontal)
            SubjectWidget(config: .init(isGoingNow: false))
                .padding(.top)
                .padding(.horizontal)
            SubjectWidget(config: .init(isGoingNow: false))
                .padding(.top)
                .padding(.horizontal)
            SubjectWidget(config: .init(isGoingNow: false))
                .padding(.top)
                .padding(.horizontal)
        }
        .refreshable {
            //
        }
        .toolbar {
//            DatePicker("datepicker", selection: .constant(Date()))
//            DatePicker(selection: .constant(Date())) {
//                Label("", systemImage: "calendar")
//            }
            DatePicker(selection: .constant(Date()), displayedComponents: .date) {
//                Label("", systemImage: "calendar")
            }
//            Button("", systemImage: "calendar") {
//                //
//            }
        }
    }
}

#Preview {
    ScheduleScreen(state: .init())
}
