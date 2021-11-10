//
//  ContactsData.swift
//  Contacts
//
//  Created by Алексей Парфенов on 10.11.2021.
//

import Foundation

class DataManager{
    
    static let contactsData = DataManager()
    
     var firstNames = [
        "Barry", "Bruce", "Arthur", "Hal", "Diana"
    ]
    
     var surNames = [
        "Allen", "Wayne", "Curry", "Jordan", "Prince"
    ]
    
     var emails = [
        "Flash@dc.com", "Batman@dc.com", "Aquman@dc.com",
        "Greenlantern@dc.com", "Wonderwoman@dc.com"
    ]
    
     var phoneNumbers = [
        "89991234567", "89037654321", "89161112233", "89097776655", "89773335577"
    ]
    
    init() {}
}
