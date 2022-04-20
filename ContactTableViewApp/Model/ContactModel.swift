//
//  ContactModel.swift
//  ContactTableViewApp
//
//  Created by Kovalyov Dmitry on 25.03.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullname: String {
        "\(surname) \(name)"
    }
}

extension Person {
    
    static func getRandomPerson() -> [Person] {
        
        let randomNames = DataManager.shared.nameArray.shuffled()
        let randomSurnames = DataManager.shared.surnameArray.shuffled()
        let randomEmails = DataManager.shared.emailArray.shuffled()
        let randomPhoneNumber = DataManager.shared.phoneNumberArray.shuffled()
        
        var personArray: [Person] = []
     
        for index in 0..<randomNames.count {
            let person = Person(name: randomNames[index],
                                surname: randomSurnames[index],
                                email: randomEmails[index],
                                phoneNumber: randomPhoneNumber[index])
            
            personArray.append(person)
        }
        
        return personArray
    }
}

