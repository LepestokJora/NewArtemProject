//
//  ViewController.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 13.09.2024.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    private let helper = newPersonHelper
    private let person = Person(nameUser: "Артем", surNameUser: "Пешков")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(person.fullNameUser), я создал свое первое приложение")
        helper.getAppendPerson(name: "Андрей", surName: "Сомов")
        helper.getAppendPerson(name: "Боб", surName: "Губка")
        
        getPrintPerson()
        
        
    }
    
    private func getPrintPerson(){
        for person in helper.getPersonList(){
            print(person.fullNameUser)
        }
    }
    
}


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




