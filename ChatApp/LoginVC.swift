//
//  LoginVC.swift
//  ChatApp
//
//  Created by Pedro Thomas on 1/11/24.
//

import UIKit

class LoginVC: UIViewController {

    // MARK: Properties
    private let vStack = ReusableStackview(axis: .vertical, spacing: 15, alignment: .center)
    private let logoImageview = ReusableSystemImage(systemImage: "plus.bubble", preferMultiColor: false, color: .systemOrange, height: 125, width: 125)
    private let instructionsLabel = ReusableLabel(text: "Sign In", fontSize: 18, weight: .bold, color: .label, numberOfLines: 0)
    private let taskLebel = ReusableLabel(text: "Enter Your Information", fontSize: 15, weight: .light, color: .lightGray, numberOfLines: 0)
    private let emailTextfield = ReusableTextfield(placeholder: "E-Mail Address", keyboardType: .emailAddress, isSecure: false, height: 50, width: UIScreen.main.bounds.width / 1.2)
    private let passwordTextfield = ReusableTextfield(placeholder: "Password", keyboardType: .asciiCapable, isSecure: true, height: 50, width: UIScreen.main.bounds.width / 1.2)
    private let signInButton = ReusableButton(buttonTitle: "Sign In", textColor: .systemGray6, buttonColor: .systemOrange, height: 50, width: UIScreen.main.bounds.width / 1.2)
    
    private let hStack = ReusableStackview(axis: .horizontal, spacing: -35, alignment: .fill)
    private let newUserLabel = ReusableLabel(text: "New User?", fontSize: 16, weight: .regular, color: .label, numberOfLines: 0)
    private let createAccountLabel = ReusableLabel(text: "Create Account", fontSize: 16, weight: .bold, color: .systemOrange, numberOfLines: 0)
    
    // MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureVStack()
        configureHStack()
    }
    
    // MARK: Objc Functions
    @objc func signInTapped() {
        print("Sign In")
    }
    
    @objc func createAccountTapped() {
        print("Create Account Tapped")
    }
    
    // MARK: Helping Functions
    private func configureVStack() {
        view.addSubview(vStack)
        vStack.addArrangedSubview(logoImageview)
        vStack.addArrangedSubview(instructionsLabel)
        vStack.addArrangedSubview(taskLebel)
        vStack.addArrangedSubview(emailTextfield)
        vStack.addArrangedSubview(passwordTextfield)
        vStack.addArrangedSubview(signInButton)
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // Button Target
        signInButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }
    
    private func configureHStack() {
        view.addSubview(hStack)
        hStack.isUserInteractionEnabled = true
        hStack.addArrangedSubview(newUserLabel)
        hStack.addArrangedSubview(createAccountLabel)
        
        NSLayoutConstraint.activate([
            hStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            hStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // Tap Gesture
        let tap = UITapGestureRecognizer(target: self, action: #selector(createAccountTapped))
        hStack.addGestureRecognizer(tap)
    }

}
