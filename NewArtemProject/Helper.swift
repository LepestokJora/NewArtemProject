//
//  Helper.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 15.09.2024.
//

import Foundation

class Helper{
    private var personBookArray: [Person] = []
    
    func getAppendPerson(_ newPerson: Person){
        personBookArray.append(newPerson)
    }
    
    func getPersonList() -> [Person]{
        personBookArray
    }
    
}


