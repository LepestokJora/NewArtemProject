//
//  Helper.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 15.09.2024.
//

import Foundation

let newPersonHelper = Helper()

class Helper{
    private var personBookArray: [Person] = []
    
    func getAppendPerson(name: String, surName: String){
        let newPerson = Person(nameUser: name, surNameUser: surName)
        personBookArray.append(newPerson)
    }
    
    func getPersonList() -> [Person]{
        personBookArray
    }
    
}


