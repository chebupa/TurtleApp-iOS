//
//  SettingsViewController.swift
//  TurtleApp-iOS
//
//  Created by aristarh on 04.01.2025.
//

import UIKit

// MARK: - Protocol

protocol SettingsViewControllerProtocol: AnyObject {}

// MARK: - Implementation

final class SettingsViewController: UIViewController, SettingsViewControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
