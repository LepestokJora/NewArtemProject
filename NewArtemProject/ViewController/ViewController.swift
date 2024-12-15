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
    
    private var textLabel = UILabel()
    private let batton = UIButton()
    private let stackView = UIStackView()
    
    private var redButton = CustomUIButton(hasShadow: false)
    private var greenButton = CustomUIButton(hasShadow: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        getHelper()
        setupLabel()
        getPrintPerson()
        setupButton()
        setupStackView()
        addAction()
        
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
    
    private func setupButton() {
        redButton.backgroundColor = .red
        greenButton.backgroundColor = .green
        redButton.setTitle("Show New User", for: .normal)
        greenButton.setTitle("Hide User", for: .normal)
        batton.setTitle("Show FullName", for: .normal)
        batton.backgroundColor = .brown
        batton.layer.cornerRadius = 10
    }
    
    @objc
    private func redButtonTapped() {
        setupLabel()
    }
}

//MARK: - Setup View
private extension ViewController {
    
    func addAction() {
        redButton.addTarget(self,
                            action: #selector(redButtonTapped),
                            for: .touchUpInside
        )
        let greenButtonAction = UIAction { _ in
            if self.textLabel.clipsToBounds {
                self.textLabel.text = ""
            }
           
        }
        greenButton.addAction(greenButtonAction, for: .touchUpInside)
    }
    
    func setupLabel() {
        let userRandomArray = userRepositary.getBackUserArray().randomElement()
        
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .white
        textLabel.textAlignment = .center
        textLabel.backgroundColor = .blue
        textLabel.layer.cornerRadius = 10
        textLabel.clipsToBounds = true
        textLabel.text = "\(userRandomArray?.userData.fullNameUser ?? "Defaut")"
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 15
        
        stackView.addArrangedSubviews(textLabel,
                                      batton,
                                      redButton,
                                      greenButton
        )
    }
}

//MARK: - Setup Stack View
private extension ViewController {
    
    func setupLayout() {
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

