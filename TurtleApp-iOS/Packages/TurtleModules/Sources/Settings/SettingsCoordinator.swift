//
//  SettingsCoordinator.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 04.01.2025.
//

import Foundation
import TurtleFoundation

// MARK: - Protocol

protocol SettingsCoordinatorProtocol: TACoordinator {}

// MARK: - Implementation

final class SettingsCoordinator: SettingsCoordinatorProtocol {
    
    var childCoordinators: [TACoordinator] = []
    
    func startCoordinator() {
        //
    }
}
