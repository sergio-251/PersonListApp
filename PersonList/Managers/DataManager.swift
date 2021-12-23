//
//  DataManager.swift
//  PersonList
//
//  Created by Sergey Efimov on 23.12.2021.
//

import Foundation

class DataManager {
    private var names = [
        "Sergey",
        "Ivan",
        "Alexey",
        "Alexander",
        "Dmitry",
        "Vladimir",
        "Fedor",
        "Mihail",
        "Egor"
    ]
    
    private var surnames = [
        "Ivanov",
        "Petrov",
        "Sidorov",
        "Efimov",
        "Kulakov",
        "Zubkov",
        "Tarasov",
        "Glushko",
        "Magomedov"
    ]
    
    private var telephones = [
    "+7(999)012-34-56",
    "+7(111)987-65-43",
    "+7(911)911-00-00",
    "+7(001)001-01-01",
    "+7(100)999-88-77",
    "+7(876)000-01-02",
    "+7(506)056-65-56",
    "+7(777)893-01-23",
    "+7(555)127-89-42"
    ]
    
    private var emails = [
    "privet@qwerty.com",
    "my@swift.org",
    "persons@allo.me",
    "class@oop.cool",
    "random@this.email",
    "something@also.ru",
    "goodday@sun.tv",
    "write@please.me",
    "soso@dot.com"
    ]
    
    func getPersons() -> [Person] {
        var resultPersonList: [Person] = []
        for _ in 0...(names.count-1) {
            resultPersonList.append(Person(
                name: getRandomName(),
                surname: getRandomSurname(),
                telephone: getRandomTelephone(),
                email: getRandomEmail()
            ))
        }
        return resultPersonList
    }
    
    private func getRandomName() -> String {
        names.remove(at: Int.random(in: 0...(names.count-1)))
    }
    
    private func getRandomSurname() -> String {
        surnames.remove(at: Int.random(in: 0...(surnames.count-1)))
    }
    
    private func getRandomTelephone() -> String {
        telephones.remove(at: Int.random(in: 0...(telephones.count-1)))
    }
    private func getRandomEmail() -> String {
        emails.remove(at: Int.random(in: 0...(emails.count-1)))
    }
    
}




