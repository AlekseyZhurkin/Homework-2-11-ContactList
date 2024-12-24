//
//  TabBarViewController.swift
//  Homework-2-11-ContactList
//
//  Created by Алексей Журкин on 24.12.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contacts = Person.getPersons(10)

        guard let mainVC = viewControllers?.first as? MainViewController else { return }
        guard let expandVC = viewControllers?.last as? ExpandListViewController else { return }
        
        mainVC.contacts = contacts
        expandVC.contacts = contacts
    }
}
