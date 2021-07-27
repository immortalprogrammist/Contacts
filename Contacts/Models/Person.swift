//
//  Person.swift
//  Contacts
//
//  Created by Nikita on 27.07.21.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
}

extension Person {
    static func getPersons() {
        var dataManager = DataManager()
        dataManager.getPerson()
    }
}
