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
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager()
        
        var names = Set(dataManager.names)
        var surnames = Set(dataManager.surnames)
        var emails = Set(dataManager.emails)
        var phoneNumbers = Set(dataManager.phoneNumbers)
        
        for _ in 0..<names.count {

            let personName = names.randomElement() ?? ""
            names.remove(personName)
            
            let personSurname = surnames.randomElement() ?? ""
            surnames.remove(personSurname)
            
            let personEmail = emails.randomElement() ?? ""
            emails.remove(personEmail)
            
            let personPhoneNumber = phoneNumbers.randomElement() ?? ""
            phoneNumbers.remove(personPhoneNumber)
            
            persons.append(Person(name: personName,
                                  surname: personSurname,
                                  email: personEmail,
                                  phoneNumber: personPhoneNumber))
        }

        return persons
    }
}
