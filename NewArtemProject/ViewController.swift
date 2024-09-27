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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .green
        view.alpha = 0.1
        
       
        getPrintPerson()
        getHelper()
        
    }
    
    private func getHelper(){
        let user = userRepositary.getBackUserArray()
        helper.getAddUser(user)
        _ = helper.getPersonList()

    }
    
    private func getPrintPerson(){
        for person in helper.getPersonList(){
            print(person.userData.fullNameUser)
        }
    }
}

