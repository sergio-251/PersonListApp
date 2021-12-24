//
//  Person.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let telephone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

// MARK: - In Methods
extension Person {
    static func getPersons() -> [Person] {
        var resultPersonList: [Person] = []
        
        let names = DataManager().names.shuffled()
        let surnames = DataManager().surnames.shuffled()
        let telephones = DataManager().telephones.shuffled()
        let emails = DataManager().emails.shuffled()
        
        for index in 0...(min(names.count, surnames.count, telephones.count, emails.count) - 1) {
            resultPersonList.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    telephone: telephones[index],
                    email: emails[index]
                ))
        }
        return resultPersonList
    }
   
}
