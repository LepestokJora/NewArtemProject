//
//  Helper.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 15.09.2024.
//

import Foundation

class Helper{
    private var personBookArray: [User] = []
    
    func getAppendPerson(_ newPerson: User){
        personBookArray.append(newPerson)
    }
    
    func getPersonList() -> [User]{
        personBookArray
    }
    
}


