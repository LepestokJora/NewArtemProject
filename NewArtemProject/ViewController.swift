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
    private let userRepositary = UserRepositary()
    private let textLabel = UILabel()
    
    let users: [User] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(setupButton)
        
        getHelper()
        getPrintPerson()
    }
    
    private func getHelper() {
        let user = userRepositary.getBackUserArray()
        helper.getAddUser(user)
    }
    
    private func getPrintPerson() {
        for person in helper.getPersonList(){
            print(person.userData.fullNameUser)
        }
    }
    
    private func setupLabel() {
        let userRandomArray = users.randomElement()
        
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        textLabel.text = "\(userRandomArray?.userData.fullNameUser ?? "Defaut")"
    }
    
    private let setupButton: UIButton = {
        let batton = UIButton()
        batton.setTitle("Show FullName", for: .normal)
        batton.backgroundColor = .green
        batton.frame = .init(x: 100, y: 150, width: 150, height: 50)
        return batton
    }()
}

