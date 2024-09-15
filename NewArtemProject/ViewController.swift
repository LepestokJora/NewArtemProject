//
//  ViewController.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 13.09.2024.
//

import UIKit

class ViewController: UIViewController {
    let person = personDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(person.fullNameUser), я создал свое первое приложение")
        
    }
    
}

