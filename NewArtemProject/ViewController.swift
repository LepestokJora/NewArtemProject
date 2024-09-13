//
//  ViewController.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 13.09.2024.
//

import UIKit

class ViewController: UIViewController {
    let nameUser = "Артем"
    let surNameUser = "Пешков"
    
    var fullNameUser: String {
        return ("\(nameUser) \(surNameUser)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(fullNameUser), я создал свое первое приложение")
        
    }
    
    
    
}

