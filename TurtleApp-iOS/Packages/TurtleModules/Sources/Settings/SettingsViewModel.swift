//
//  SettingsViewModel.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 04.01.2025.
//

import Foundation

// MARK: - Protocol

protocol SettingsViewModelProtocol: AnyObject {}

// MARK: - Implementation

final class SettingsViewModel: SettingsViewModelProtocol {
    
    weak var coordinator: SettingsCoordinatorProtocol?
    weak var viewController: SettingsViewControllerProtocol?
}
