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
        
        
        
//        var customIndex = 0
//        repeat {
//            personArray.append(Person(name: randomNames[customIndex],
//                                      surname: randomSurnames[customIndex],
//                                      email: randomEmails[customIndex],
//                                      phoneNumber: randomPhoneNumber[customIndex])
//            )
//            customIndex += 1
//        } while customIndex < randomNames.count
       
        return personArray
    }
}

