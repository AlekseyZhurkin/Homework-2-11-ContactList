//
//  DetailsViewController.swift
//  Homework-2-11-ContactList
//
//  Created by Алексей Журкин on 24.12.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - IB Outlets
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
