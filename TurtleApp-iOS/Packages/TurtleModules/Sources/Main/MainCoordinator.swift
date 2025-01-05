//
//  MainCoordinator.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 04.01.2025.
//

import UIKit
import TurtleFoundation

// MARK: - Protocol

protocol MainCoordinatorProtocol: TACoordinator {}

// MARK: - Implementation

final class MainCoordinator: MainCoordinatorProtocol {
    
    var childCoordinators: [TACoordinator] = []
    
    func startCoordinator() {
        //
    }
}
