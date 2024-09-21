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
    private let person = Person(nameUser: "Артем", surNameUser: "Пешков")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(person.fullNameUser), я создал свое первое приложение")
        helper.getAppendPerson(Person(nameUser: "Андрей", surNameUser: "Сомов"))
        helper.getAppendPerson(Person(nameUser: "Боб", surNameUser: "Губка"))
        
        getPrintPerson()
        
        
    }
    
    private func getPrintPerson(){
        for person in helper.getPersonList(){
            print(person.fullNameUser)
        }
    }
    
}






