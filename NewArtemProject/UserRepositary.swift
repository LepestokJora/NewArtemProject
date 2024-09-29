//
//  UserRepositary.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 28.09.2024.
//

import Foundation

class UserRepositary{
    func getBackUserArray() -> [User]{
        
        [
            User(userData: Person(nameUser: "Сквидвард", surNameUser: "Тентаклс")),
            User(userData: Person(nameUser: "Боб", surNameUser: "Губка"))
        ]
    }
}
