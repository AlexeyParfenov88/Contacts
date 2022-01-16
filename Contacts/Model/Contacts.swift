//
//  Contacts.swift
//  Contacts
//
//  Created by Алексей Парфенов on 10.11.2021.
//

import Foundation

struct Person {
    var firstName: String
    var surName: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(surName)"
    }
}

//extension Person {
//    static func getContact() -> [Person] {
//        [
//            Person(firstName: "Barry", surName: "Allen", email: "Flash@dc.com",
//                   phoneNumber: "89991234567"),
//            Person(firstName: "Bruce", surName: "Wayne", email: "Batman@dc.com",
//                   phoneNumber: "89037654321"),
//            Person(firstName: "Arthur", surName: "Curry", email: "Aquman@dc.com",
//                   phoneNumber: "89161112233"),
//            Person(firstName: "Hal", surName: "Jordan", email: "Greenlantern@dc.com",
//                   phoneNumber: "89097776655"),
//            Person(firstName: "Diana", surName: "Prince", email: "Wonderwoman@dc.com",
//                   phoneNumber: "89773335577")
//        ]
//    }
//}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.contactsData.firstNames.shuffled()
        let surnames = DataManager.contactsData.surNames.shuffled()
        let emails = DataManager.contactsData.emails.shuffled()
        let phones = DataManager.contactsData.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: names[index],
                surName: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
