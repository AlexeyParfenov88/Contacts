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

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataManager.contactsData.firstNames.shuffled()
        let surNames = DataManager.contactsData.surNames.shuffled()
        let emails = DataManager.contactsData.emails.shuffled()
        let phoneNumbers = DataManager.contactsData.phoneNumbers.shuffled()
        
        for i in 0..<firstNames.count {
            persons.append(
                Person(
                    firstName: firstNames[i],
                    surName: surNames[i],
                    email: phoneNumbers[i],
                    phoneNumber: emails[i]
                )
            )
        }
        return persons
        }
    }

