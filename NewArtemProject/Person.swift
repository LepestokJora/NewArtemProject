//
//  Person.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 21.09.2024.
//

import Foundation


class Person{
   
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
