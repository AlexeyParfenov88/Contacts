//
//  ContactsData.swift
//  Contacts
//
//  Created by Алексей Парфенов on 10.11.2021.
//

import Foundation

struct PersonsData {
    
    static let sharedInstance = PersonsData()
    
    var persons: [Person]
    
    private var firstNames = [
        "Barry",
        "Bruce",
        "Arthur",
        "Hal",
        "Diana"
    ]
    
    private var surNames = [
        "Allen",
        "Wayne",
        "Curry",
        "Jordan",
        "Prince"    ]
    
    private var emails = [
        "Flash@dc.com",
        "Batman@dc.com",
        "Aquman@dc.com",
        "Greenlantern@dc.com",
        "Wonderwoman@dc.com"
    ]
    
    private var phoneNumbers = [
        "89991234567",
        "89037654321",
        "89161112233",
        "89097776655",
        "89773335577"
    ]

    init() {
        persons = [Person]()
        
        firstNames.shuffle()
        surNames.shuffle()
        emails.shuffle()
        phoneNumbers.shuffle()
        
        //changed name for firstName
        for ((firstName, surName), (email, phoneNumber)) in zip(zip(firstNames, surNames), zip(emails, phoneNumbers)) {
            
            let person = Person(firstName: firstName, surName: surName, email: email, phoneNumber: phoneNumber)
            
            self.persons.append(person)
        }
    }
}
