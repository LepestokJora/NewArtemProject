//
//  Person.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 21.09.2024.
//

import Foundation


struct Person{
   
    let nameUser: String
    let surNameUser: String

    var fullNameUser: String {
        "\(nameUser) \(surNameUser)"
    }

}

struct User{
    
    let login: String
    let password: Int
    let userData: Person
    
    init(login: String = "", password: Int = 1, userData: Person) {
        self.login = login
        self.password = password
        self.userData = userData
    }
    
   
}
