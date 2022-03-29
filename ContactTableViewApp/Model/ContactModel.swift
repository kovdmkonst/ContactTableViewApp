//
//  ContactModel.swift
//  ContactTableViewApp
//
//  Created by Kovalyov Dmitry on 25.03.2022.
//

import Foundation

struct Person {
    var name: String!
    var surname: String!
    var email: String!
    var callNumber: String!
    var fullname: String { "\(surname ?? "") \(name ?? "")" }

    static func getRandomPerson() -> [Person] {
        let randomNames = nameArray.shuffled()
        let randomSurnames = surnameArray.shuffled()
        let randomEmails = emailArray.shuffled()
        let randomCallNumber = callNumberArray.shuffled()
        var personArray: [Person] = []
        var customIndex = 0
        
        repeat {
            personArray.append(Person(name: randomNames[customIndex],
                                      surname: randomSurnames[customIndex],
                                      email: randomEmails[customIndex],
                                      callNumber: randomCallNumber[customIndex])
            )
            customIndex += 1
        } while  customIndex < randomNames.count
        return personArray
    }
}

extension Person {
    
    static let nameArray = [
        "Stewart",
        "Robert",
        "Liam",
        "Olivia",
        "Noah",
        "Emma",
        "Oliver",
        "Ava",
        "Elijah",
        "Charlotte"
    ]
    
    static let surnameArray = [
        "Smith",
        "Johnson",
        "Williams",
        "Brown",
        "Jones",
        "Garcia",
        "Miller",
        "Davis",
        "Rodriguez",
        "Martinez"
    ]
    
    static let emailArray = [
        "qwerty@mail.com",
        "asdfg@mail.com",
        "zxcvb@mail.com",
        "qazxsw@mail.com",
        "wsxzaq@mail.com",
        "ytrewq@mail.com",
        "hgfdsa@mail.com",
        "bvcxz@mail.com",
        "plmnko@mail.com",
        "ijnbhu@mail.com",
    ]
    
    static let callNumberArray = [
        "8-800-123-456",
        "8-800-234-567",
        "8-800-345-678",
        "8-800-456-789",
        "8-800-567-890",
        "8-800-678-901",
        "8-800-789-012",
        "8-800-890-123",
        "8-800-901-234",
        "8-800-012-345",
    ]
}

