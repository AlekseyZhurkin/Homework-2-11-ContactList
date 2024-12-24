//
//  ExpandListViewController.swift
//  Homework-2-11-ContactList
//
//  Created by Алексей Журкин on 24.12.2024.
//

import UIKit

final class ExpandListViewController: UITableViewController {
    // MARK: - Public Properties
    var contacts: [Person]!
    
    // MARK: - Overrides Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = contact.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
