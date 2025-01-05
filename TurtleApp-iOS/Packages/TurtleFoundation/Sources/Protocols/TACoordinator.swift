//
//  File.swift
//  TurtleFoundation
//
//  Created by aristarh on 04.01.2025.
//

import UIKit

// MARK: - Protocol

public protocol TACoordinator: AnyObject {
    
    var childCoordinators: [TACoordinator] { get }
    var navigationController: UINavigationController { get }
    
    func startCoordinator()
}

// MARK: - Default implementation

public extension TACoordinator {
    
    @MainActor
    var navigationController: UINavigationController { .init() }
}
