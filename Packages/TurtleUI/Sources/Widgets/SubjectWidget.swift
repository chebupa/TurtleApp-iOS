//
//  SubjectWidget.swift
//  TurtleUI
//
//  Created by aristarh on 05.01.2025.
//

import SwiftUI

// MARK: - Widget

public struct SubjectWidget: View {
    
    // MARK: Properties
    
    public struct Config {
        
        var isGoingNow: Bool
        
        public init(isGoingNow: Bool) {
            self.isGoingNow = isGoingNow
        }
    }
    
    private let config: SubjectWidget.Config
    
    public init(config: SubjectWidget.Config) {
        self.config = config
    }
    
    // MARK: Body
    
    public var body: some View {
        if config.isGoingNow {
            HStack {
                timeNowView
                subjectInfo
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.1))
                    .roundedBorder(cornerRadius: 24, lineWidth: 1, color: .black.opacity(0.5))
            }
        } else {
            HStack(alignment: .top) {
                timeView
                subjectInfo
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.gray.opacity(0.1))
            .roundedBorder(cornerRadius: 24, lineWidth: 1, color: .black.opacity(0.5))
        }
    }
    
    @ViewBuilder
    private var timeNowView: some View {
        VStack {
            Text("11:30")
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(Color.accentColor)
            ProgressView(value: 0.5)
                .progressViewStyle(.linear)
                .rotationEffect(.degrees(90))
                .frame(height: 70)
            Text("13:00")
                .font(.system(size: 22, weight: .bold))
        }
        .frame(width: 70)
    }
    
    @ViewBuilder
    private var timeView: some View {
        VStack {
            subjectNumber
            Text("11:30")
                .font(.system(size: 22, weight: .bold))
            Text("13:00")
        }
    }
    
    @ViewBuilder
    private var subjectInfo: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Subject name")
                .font(.system(size: 24, weight: .bold))
                .padding(4)
                .padding(.leading, 6)
                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(.green.opacity(0.8))
//                .clipShape(.capsule)
            Group {
                TALabel(text: "ИС-23", image: .init(.system("graduationcap")))
                TALabel(text: "с/36", image: .init(.system("key")))
                TALabel(text: "1", image: .init(.system("building.columns")))
            }
            .padding(.leading, 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .bottomTrailing) {
            if config.isGoingNow {
                subjectNumber
            }
        }
    }
    
    @ViewBuilder
    private var subjectNumber: some View {
        Text("3")
            .font(.system(size: 24, weight: .bold))
            .padding(8)
            .background(.green.opacity(0.8))
            .clipShape(.circle)
    }
}

// MARK: - Preview

#Preview {
    SubjectWidget(config: .init(isGoingNow: false))
}
