//
//  ViewController.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 13.09.2024.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let person = User(userData: Person(nameUser: "Артем", surNameUser: "Пешков"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(person.userData.fullNameUser), я создал свое первое приложение")
        
        
        getPrintPerson()
        getHelper()
        
    }
    
    private func getHelper(){
        helper.getAppendPerson(User(userData: Person(nameUser: "Сквидвард",
                                                     surNameUser: "Тентаклс")))
        
        helper.getAppendPerson(User(userData: Person(nameUser: "Боб",
                                                     surNameUser: "Губка")))
    }
    
    private func getPrintPerson(){
        for person in helper.getPersonList(){
            print(person.userData.fullNameUser)
        }
    }
}






