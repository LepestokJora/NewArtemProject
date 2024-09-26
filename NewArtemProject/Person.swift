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
    
    
    init(nameUser: String, surNameUser: String) {
        self.nameUser = nameUser
        self.surNameUser = surNameUser
        
    }

}

struct User{
    
    var login = "Gerd"
    var password = 123
    let userData: Person
    
    init(userData: Person) {
        self.userData = userData
    }
    
   
}
