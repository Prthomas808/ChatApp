//
//  RegisterVC.swift
//  ChatApp
//
//  Created by Pedro Thomas on 1/11/24.
//

import UIKit

class RegisterVC: UIViewController {

    // MARK: Properties
    private let vStack = ReusableStackview(axis: .vertical, spacing: 15, alignment: .center)
    private let addPhotoButton = ReusableSystemImage(systemImage: "person.circle", preferMultiColor: false, color: .systemOrange, height: 125, width: 125)
    private let instructionsLabel = ReusableLabel(text: "Sign In", fontSize: 18, weight: .bold, color: .label, numberOfLines: 0)
    private let taskLebel = ReusableLabel(text: "Enter Your Information", fontSize: 15, weight: .light, color: .lightGray, numberOfLines: 0)
    private let firstNameTextfield = ReusableTextfield(placeholder: "First Name", keyboardType: .emailAddress, isSecure: false, height: 50, width: UIScreen.main.bounds.width / 1.2)
    private let lastNameTextfield = ReusableTextfield(placeholder: "Last Name", keyboardType: .emailAddress, isSecure: false, height: 50, width: UIScreen.main.bounds.width / 1.2)
    private let emailTextfield = ReusableTextfield(placeholder: "E-Mail Address", keyboardType: .emailAddress, isSecure: false, height: 50, width: UIScreen.main.bounds.width / 1.2)
    private let passwordTextfield = ReusableTextfield(placeholder: "Password", keyboardType: .asciiCapable, isSecure: true, height: 50, width: UIScreen.main.bounds.width / 1.2)
    private let signUpButton = ReusableButton(buttonTitle: "Sign Up", textColor: .systemGray6, buttonColor: .systemOrange, height: 50, width: UIScreen.main.bounds.width / 1.2)
    
    private let hStack = ReusableStackview(axis: .horizontal, spacing: 5, alignment: .fill)
    private let currentUserLabel = ReusableLabel(text: "Have An Account?", fontSize: 16, weight: .regular, color: .label, numberOfLines: 0)
    private let signInLabel = ReusableLabel(text: "Sign In", fontSize: 16, weight: .bold, color: .systemOrange, numberOfLines: 0)
    
    // MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
        configureVStack()
        configureHStack()
    }
    
    // MARK: Objc Functions
    @objc func addPhotoTapped() {
        print("add photo tapped")
    }
    
    @objc func signUpTapped() {
        print("Signed up")
    }
    
    @objc func signInTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: Helping Functions
    private func configureVStack() {
        view.addSubview(vStack)
        vStack.addArrangedSubview(addPhotoButton)
        vStack.addArrangedSubview(instructionsLabel)
        vStack.addArrangedSubview(taskLebel)
        vStack.addArrangedSubview(firstNameTextfield)
        vStack.addArrangedSubview(lastNameTextfield)
        vStack.addArrangedSubview(emailTextfield)
        vStack.addArrangedSubview(passwordTextfield)
        vStack.addArrangedSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // Button Target
        signUpButton.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        
        // Tap Gesture
        let tap = UITapGestureRecognizer(target: self, action: #selector(addPhotoTapped))
        addPhotoButton.addGestureRecognizer(tap)
        addPhotoButton.isUserInteractionEnabled = true
    }
    
    private func configureHStack() {
        view.addSubview(hStack)
        hStack.isUserInteractionEnabled = true
        hStack.addArrangedSubview(currentUserLabel)
        hStack.addArrangedSubview(signInLabel)
        
        NSLayoutConstraint.activate([
            hStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            hStack.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 40)
        ])
        
        // Tap Gesture
        let tap = UITapGestureRecognizer(target: self, action: #selector(signInTapped))
        hStack.addGestureRecognizer(tap)
    }

}
