//
//  Person.swift
//  Homework-2-11-ContactList
//
//  Created by Алексей Журкин on 24.12.2024.
//

struct Person {
    // MARK: - Public Properties
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    // MARK: - Initializers
    init(name: String, surname: String, number: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = number
        self.email = email
    }
    
    // MARK: - Public Methods
    static func getPersons(_ count: Int) -> [Person] {
        var persons: [Person] = []
        
        var data: [String:[String]] = [:]
        data["names"] = DataStore.shared.names.shuffled()
        data["surnames"] = DataStore.shared.surnames.shuffled()
        data["phoneNumbers"] = DataStore.shared.phoneNumbers.shuffled()
        data["emails"] = DataStore.shared.emails.shuffled()
        
        for personIndex in 0..<min(count, data["names"]?.count ?? 0) {
            let person = Person(
                name: data["names"]?[personIndex] ?? "",
                surname: data["surnames"]?[personIndex] ?? "",
                number: data["phoneNumbers"]?[personIndex] ?? "",
                email: data["emails"]?[personIndex] ?? ""
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
