//
//  Person.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var telephone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
