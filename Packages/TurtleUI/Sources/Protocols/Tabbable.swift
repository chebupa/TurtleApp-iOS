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
    
    public var title: String
    public var image: String
    
    public var screen: AnyView
    
    public init(title: String, image: String, screen: AnyView) {
        self.title = title
        self.image = image
        self.screen = screen
    }
}
