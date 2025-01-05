//
//  MainViewController.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 04.01.2025.
//

import UIKit
import TurtleFoundation

// MARK: - Protocol

protocol MainViewControllerProtocol: AnyObject {}

// MARK: - Implementation

final class MainViewController: UITabBarController, MainViewControllerProtocol {
    
    required init?(coder: NSCoder) {
        fatalError("required init?(coder: NSCoder) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSettingsViewController()
    }
    
    private func setupSettingsViewController() {
        let viewModel = SettingsViewModel()
        let viewController = viewModel.viewController
        let navigationController = viewModel.coordinator?.navigationController
        self.viewControllers?.append(navigationController)
    }
}
