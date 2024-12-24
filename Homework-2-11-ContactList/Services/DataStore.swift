//
//  DataStore.swift
//  Homework-2-11-ContactList
//
//  Created by Алексей Журкин on 24.12.2024.
//

final class DataStore {
    // MARK: - Public Properties
    static let shared = DataStore() // Singleton объект
    
    let names: [String] = [
        "James",
        "Emily",
        "Michael",
        "Sarah",
        "Christopher",
        "Ashley",
        "Daniel",
        "Jessica",
        "Matthew",
        "Jennifer"
    ]
    
    let surnames: [String] = [
        "Smith",
        "Johnson",
        "Brown",
        "Williams",
        "Jones",
        "Davis",
        "Miller",
        "Wilson",
        "Anderson",
        "Taylor"
    ]
    
    let phoneNumbers: [String] = [
        "+44 (111) 123-45-67",
        "+25 (222) 223-55-78",
        "+67 (333) 323-65-89",
        "+11 (444) 423-75-90",
        "+36 (555) 523-85-01",
        "+15 (666) 623-95-12",
        "+47 (777) 723-05-23",
        "+68 (888) 823-15-34",
        "+79 (999) 923-25-45",
        "+32 (123) 133-35-56"
    ]
    
    let emails: [String] = [
        "email01@gmail.com",
        "email02@gmail.com",
        "email03@gmail.com",
        "email04@gmail.com",
        "email05@gmail.com",
        "email06@gmail.com",
        "email07@gmail.com",
        "email08@gmail.com",
        "email09@gmail.com",
        "email10@gmail.com"
    ]
    
    private init() {} // Запрещаем создание других экземпляров
}



