//
//  Helper.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 15.09.2024.
//

import Foundation


let personDelegate = Person()

class Person: ViewController{
   
    let nameUser = "Артем"
    let surNameUser = "Пешков"
    
    var fullNameUser: String {
        "\(nameUser) \(surNameUser)"
    }
    
}


