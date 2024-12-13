//
//  Tabbable.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 14.12.2024.
//

import SwiftUI

// MARK: - Protocol

public protocol Tabbable: AnyObject, Identifiable {
    
    var tabConfig: TabConfig { get }
}

// MARK: - Config

public struct TabConfig {
    
    var title: String
    var image: String
    
    var screen: AnyView
}
