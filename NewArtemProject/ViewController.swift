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
    private let batton = UIButton()
    private let stackView = UIStackView()
    private var redButton = CustomUIButton(hasShadow: false)
    private var greenButton = CustomUIButton(hasShadow: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        getHelper()
        setupLabel()
        getPrintPerson()
        setupButton()
        setupStackView()
        
        view.addSubview(stackView)
        setupLayout()
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
        let userRandomArray = userRepositary.getBackUserArray().randomElement()
        
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .black
        textLabel.textAlignment = .center
        textLabel.backgroundColor = .blue
        textLabel.layer.cornerRadius = 10
        textLabel.clipsToBounds = true
        textLabel.text = "\(userRandomArray?.userData.fullNameUser ?? "Defaut")"
    }
    
    private func setupButton() {
        redButton.setTitle("Show New User", for: .normal)
        greenButton.setTitle("Hide User", for: .normal)
        batton.setTitle("Show FullName", for: .normal)
        batton.backgroundColor = .blue
        batton.layer.cornerRadius = 10
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 10
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(batton)
        stackView.addArrangedSubview(redButton)
        stackView.addArrangedSubview(greenButton)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        batton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        ])
    }
}

